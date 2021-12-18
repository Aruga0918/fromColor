import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as io;

class ImageUploader {

  // ImagePickerで画像を取得する場合は、画像がローカルフォルダに保存されるので、そのパスを取得し、ローカルパスとして記憶しておきます
  static Future<String?> selectImage(BuildContext context) async{

    const String SELECT_ICON = "画像を選択";
    const List<String> SELECT_ICON_OPTIONS =
    ["フォルダから選択", "カメラで撮影"];
    const int GALLERY = 0;
    const int CAMERA = 1;

    var selectType=await showDialog(
        context: context,
        builder: (BuildContext context){
          return SimpleDialog(
            title: Text(SELECT_ICON),
            children: SELECT_ICON_OPTIONS.asMap().entries.map((e) {
              return SimpleDialogOption(
                child: ListTile(
                  title: Text(e.value),
                ),
                onPressed: ()=>Navigator.of(context).pop(e.key),
              );
            }).toList(),
          ) ;
        });

    final picker = ImagePicker();
    var  imgSrc;

    if (selectType == null){
      return null;
    }
    //カメラで撮影
    else if (selectType == CAMERA){
      imgSrc = ImageSource.camera;
      print(imgSrc);
    }
    //ギャラリーから選択
    else if (selectType == GALLERY){
      imgSrc = ImageSource.gallery;
      print(imgSrc);
    }

    final PickedFile? pickedFile = await picker.getImage(source: imgSrc, imageQuality: 10);
    print(pickedFile);

    if (pickedFile == null){
      return null;
    }
    else{
      return pickedFile.path;
    }
  }

  //Firebase Storageに画像を保存
  //sourcePathには先に取得したローカルパス、uploadFileNameには一意になるような名前を入れます。
  static Future<String> uploadFile({required String sourcePath, required String userId, required String category, required String fileName}) async{

    final FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("closet/$userId/$category/$fileName");  //保存するフォルダ

    io.File file = io.File(sourcePath);
    UploadTask task = ref.putFile(file);
    Future<String> getUrl() async {
      try {
        final remoteUrl = await ref.getDownloadURL();
        print(remoteUrl);
        return remoteUrl.toString();
      } catch (e) {
        print(e);
        return "error";
      }
    }

    var result = "error";

    await task.whenComplete(
            () async{
              result = await getUrl();
            });

    return result;

    // try{
    //   final snapshot = await task;
    //   snapshot.ref.getDownloadURL().then(
    //           (remoteUrl) {
    //             Duration(milliseconds: 1);
    //             print(remoteUrl);
    //             return remoteUrl;
    //           }
    //   );
    // }
    // catch(error){
    //   //エラー処理
    //   switch (error) {
    //     case 'storage/object-not-found':
    //       print('ファイルが存在しませんでした');
    //       return null;
    //     case 'storage/unauthorized':
    //       print('許可がありません');
    //       return null;
    //     case 'storage/canceled':
    //       print('キャンセルされました');
    //       return null;
    //     case 'storage/unknown':
    //       print('予期せぬエラーが生じました');
    //       return null;
    //     // default:
    //     //   print('原因不明のエラーです');
    //     //   return null;
    //   }
    // }
  }

  //画像のファイルパスを保存
  //最後に、上記のローカルの画像パスとstorageに保存したパスをfirestoreに（String型で）保存します。
  static Future<String> addFilePath({
    required String userId,
    required String category,
    required String subCategory,
    required String colorCategory,
    required String localPath,
    required String remotePath,
    required String colorValue,
    required String fileName,
  })async {

    CollectionReference users =
    FirebaseFirestore.instance.collection('usersCloset/$userId/$category/$subCategory/$colorCategory');

    await users.doc(fileName)
        .set(
        {
          'localImagePath': localPath,
          'remoteImagePath': remotePath,
          'itemColorValue': colorValue,
          'fileName': 'closet/$userId/$category/$fileName'
        },
        SetOptions(merge: true)
    );
    return 'closet/$userId/$category/$fileName';
  }

  static Future<void> removeData({required DownloadData data}) async {
    final filePath = data.fileName;
    final url = data.remoteImagePath;
    if (filePath != null) {
      await _removeStore(filePath);
    } else {
      print("Not found file path");
    }
    if (url != null) {
      await _removeStorage(url);
    } else {
      print("Not Found file url");
    }

  }

  static Future<void> _removeStore(String filePath)async {
      DocumentReference storePath = FirebaseFirestore.instance.doc(filePath);
      try {
        await storePath.delete();
      } catch(e) {
       print(e);
       print("Failed to remove file");
       return;
      }
    }

  static Future<void> _removeStorage(String url) async {
    try {
      final storage = FirebaseStorage.instance;
      Reference ref= storage.refFromURL(url);
      await ref.delete();
    } catch (e) {
      print(e);
    }
  }
}