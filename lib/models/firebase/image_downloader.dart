import 'dart:io' as io;

import 'package:firebase_storage/firebase_storage.dart';

class ImageDownLoader {
  Future<String> getImage(String imgPathLocal, String imgPathRemote) async{

    final bool existLocal = await io.File(imgPathLocal).exists();
    String imgPathUse="";

    if (existLocal) {
      //ローカルに存在する場合はローカルの画像を使う
      imgPathUse = imgPathLocal;
    }
    else {
      if ((imgPathRemote != "") && (imgPathRemote != null)) {
        try {
          //ローカルに存在しない場合はリモートのデータをダウンロード
          imgPathUse = await FirebaseStorage.instance.ref().
          child("closet").child(imgPathRemote).getDownloadURL();
        }
        catch (FirebaseException) {
          imgPathUse = "";
        }
      }
      else{
        imgPathUse="";
      }
    }
    return imgPathUse;
  }
}