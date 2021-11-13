import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_color/models/firebase/image_uploader.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

Future addUserInfo({required String userId, required String? userName}) async {
  await userCollectionRef
      .doc(userId)
      .set({"userId": userId, "userName": userName});
}

Future signout() async {
  await FirebaseAuth.instance.signOut();
}

////////////////// Storage methods //////////////////

Future<void> uploadImage({
  required String userId,
  required String category,
  required String subCategory,
  required String colorCategory,
  required String colorValue,
  required String localImagePath,
  required BuildContext context
}) async {
  final remoteImagePath = await ImageUploader.uploadFile(sourcePath: localImagePath, userId: userId, category: category);
  if (remoteImagePath == null) {
    showAlertDialog(context: context);
    return;
  }
  ImageUploader.addFilePath(
      userId: userId,
      category: category,
      subCategory: subCategory,
      colorCategory: colorCategory,
      localPath: localImagePath,
      remotePath: remoteImagePath,
      colorValue: colorValue
  );
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