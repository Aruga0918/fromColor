import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/models/firebase/image_uploader.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart';

////////////////// Collection references //////////////////

CollectionReference userCollectionRef =
    FirebaseFirestore.instance.collection("users");

////////////////// Authentication methods //////////////////

Future googleSignin() async {
  final googleUser = await GoogleSignIn().signIn();
  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

  // Create a new credential
  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  await FirebaseAuth.instance.signInWithCredential(credential);

  // もしfirestoreにデータが保存されていなかったら保存
  if (FirebaseAuth.instance.currentUser != null) {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    bool docExists = await checkIfDocExists(collectionRef: userCollectionRef, docId: userId);
    if (!docExists) {
      addUserInfo(userId: userId, userName: googleUser.displayName);
    }
  }
}

Future<void> appleLogIn() async {
  final result = await TheAppleSignIn.performRequests(
      [AppleIdRequest(
        requestedScopes: [
          Scope.email,
          Scope.fullName,
        ],
      )
      ]);
  // 2. check the result
  switch (result.status) {
    case AuthorizationStatus.authorized:
      final appleIdCredential = result.credential!;
      final oAuthProvider = OAuthProvider('apple.com');
      final credential = oAuthProvider.credential(
        idToken: String.fromCharCodes(appleIdCredential.identityToken!),
        accessToken:
        String.fromCharCodes(appleIdCredential.authorizationCode!),
      );
      final userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      // もしfirestoreにデータが保存されていなかったら保存
      if (FirebaseAuth.instance.currentUser != null) {
        final userId = FirebaseAuth.instance.currentUser!.uid;
        bool docExists = await checkIfDocExists(
            collectionRef: userCollectionRef, docId: userId);
        final firebaseUser = userCredential.user!;
        final fullName = appleIdCredential.fullName;
        if (fullName != null &&
            fullName.givenName != null &&
            fullName.familyName != null) {
          final displayName = '${fullName.familyName} ${fullName.givenName}';
          await firebaseUser.updateDisplayName(displayName);
          addUserInfo(userId: userId, userName: displayName);
          if (!docExists) {
            addUserInfo(userId: userId, userName: displayName);
          }
        }
      }
      return;
    case AuthorizationStatus.error:
      throw PlatformException(
        code: 'ERROR_AUTHORIZATION_DENIED',
        message: result.error.toString(),
      );

    case AuthorizationStatus.cancelled:
      throw PlatformException(
        code: 'ERROR_ABORTED_BY_USER',
        message: 'Sign in aborted by user',
      );
    default:
      throw UnimplementedError();
  }
//NOTE :  sign_in_with_apple ^3.30 iOS14以降未対応
//   final appleCredential = await SignInWithApple.getAppleIDCredential(
//       scopes: [
//         AppleIDAuthorizationScopes.email,
//         AppleIDAuthorizationScopes.fullName,
//       ],
//   );
//
//   try {
//     OAuthProvider oauthProvider = OAuthProvider('apple.com');
//     final credential = oauthProvider.credential(
//       idToken: appleCredential.identityToken,
//       accessToken: appleCredential.authorizationCode,
//     );
//     final firebaseResult = await FirebaseAuth.instance.signInWithCredential(credential);
//
//     // もしfirestoreにデータが保存されていなかったら保存
//     if (FirebaseAuth.instance.currentUser != null) {
//       final userId = FirebaseAuth.instance.currentUser!.uid;
//       bool docExists = await checkIfDocExists(collectionRef: userCollectionRef, docId: userId);
//       if (!docExists) {
//         addUserInfo(userId: userId, userName: "$appleCredential.familyName $appleCredential.givenName");
//       }
//     }
//   } catch(e) {
//     print(e);
//   }
}

Future addUserInfo({required String userId, required String? userName}) async {
  await userCollectionRef
      .doc(userId)
      .set({"userId": userId, "userName": userName});
}

Future signout() async {
  await FirebaseAuth.instance.signOut();
}

////////////////// Storage methods //////////////////

Future<Map<String, String>> uploadImage({
  required String userId,
  required String category,
  required String subCategory,
  required String colorCategory,
  required String colorValue,
  required String localImagePath,
  required BuildContext context
}) async {
  final datetime = DateTime.now().toString();
  final remoteImagePath = await ImageUploader.uploadFile(sourcePath: localImagePath, userId: userId, category: category, fileName: datetime);
  if (remoteImagePath == "error") {
    print("no remotePath");
    showAlertDialog(context: context);
  }
  final filePath = await ImageUploader.addFilePath(
    userId: userId,
    category: category,
    subCategory: subCategory,
    colorCategory: colorCategory,
    localPath: localImagePath,
    remotePath: remoteImagePath,
    colorValue: colorValue,
    fileName: datetime,
  );
  return {"remoteImagePath": remoteImagePath, "filePath": filePath};
}

Future<Map<String, List<DownloadData>>> getCategoryItems({required String userId, required String category}) async {
  final Map<String, List<DownloadData>> categoryItems = {};
  for (final colorCategory in ColorList.categoryList.keys) {
    final List<DownloadData> colorItems = [];
    final CollectionReference categoryCollectionRef =
    FirebaseFirestore.instance.collection('usersCloset/$userId/$category/initial/$colorCategory'); //ver1.0ではサブカテゴリ１つのみ
    final querySnapShot = await categoryCollectionRef.get();
    final queryDocSnapshot = querySnapShot.docs; //colorCategory内のドキュメントリスト
    queryDocSnapshot.forEach((DocumentSnapshot doc) async {
      final DownloadData data = await DownloadData.snapshot2DLData(snapshot: doc);
      colorItems.add(data);
    });
    categoryItems[colorCategory] = colorItems;
  }
  return categoryItems;
}

Future<void> deleteStorage({required String url}) async{
  try {
    await FirebaseStorage.instance.refFromURL(url).delete();
  } catch(e) {
    print(e);
  }
}

Future<String> deleteDocument({required String path}) async{
  final keys = path.split("/");
  final docPath = keys.last;
  final category = keys[2];
  final collectionPath = path.replaceAll("/$docPath", "");
  FirebaseFirestore.instance.collection(collectionPath).doc(docPath).delete();
  return category;

}

////////////////// Common methods //////////////////

Future<bool> checkIfDocExists(
  {required CollectionReference collectionRef, required String docId}) async {
  try {
    // Get reference to Firestore collection
    var doc = await collectionRef.doc(docId).get();
    return doc.exists;
  } catch (e) {
    rethrow;
  }
}

void showAlertDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (alertContext) {
      return AlertDialog(
        title: const Text('サーバーとの通信に失敗しました。\n通信環境をご確認ください。'),
        actions: <Widget>[
          SimpleDialogOption(
            child: const Text('閉じる'),
            onPressed: () {
              Navigator.of(alertContext).pop();
            },
          ),
        ],
      );
    },
  );
}

