import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as io;

class ImageUploader {

  // ImagePickerで画像を取得する場合は、画像がローカルフォルダに保存されるので、そのパスを取得し、ローカルパスとして記憶しておきます
  static Future<String?> selectImage(BuildContext context) async{

    const String SELECT_ICON = "アイコンを選択";
    const List<String> SELECT_ICON_OPTIONS =
    ["写真から選択", "写真を撮影"];
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

    final PickedFile? pickedFile = await picker.getImage(source: imgSrc);
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
  Future<String?> uploadFile(String sourcePath, String uploadFileName) async{

    final FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("closet");  //保存するフォルダ

    io.File file = io.File(sourcePath);
    UploadTask task = ref.child(uploadFileName).putFile(file);

    try{
      final snapshot = await task;
      snapshot.ref.getDownloadURL().then(
              (remoteUrl) => remoteUrl.toString()
      );
    }
    catch(error){
      //エラー処理
      switch (error) {
        case 'storage/object-not-found':
          print('ファイルが存在しませんでした');
          return null;
        case 'storage/unauthorized':
          print('許可がありません');
          return null;
        case 'storage/canceled':
          print('キャンセルされました');
          return null;
        case 'storage/unknown':
          print('予期せぬエラーが生じました');
          return null;
      }
    }
  }

  //画像のファイルパスを保存
  //最後に、上記のローカルの画像パスとstorageに保存したパスをfirestoreに（String型で）保存します。
  Future<void> addFilePath({required String userId, required String localPath, required String remotePath, required String colorValue})async {

    CollectionReference users =
    FirebaseFirestore.instance.collection('usersClosetPath');

    await users.doc(userId)
        .set(
        {
          'localPath': localPath,
          'remotePath': remotePath,
          'colorValue': colorValue
        },
        SetOptions(merge: true)
    );
  }
}