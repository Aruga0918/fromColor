import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/firebase/image_uploader.dart';

class UploadImageNotifier extends StateNotifier<String> {
  UploadImageNotifier() : super(""); //初期値

  void getImagePath({required BuildContext context}) async{
    final imagePath = await ImageUploader.selectImage(context);
    if (imagePath != null) {
      state = imagePath;
    } else {
      print("画像選択に失敗しました");
    }
  }
}

final uploadImageProvider = StateNotifierProvider<UploadImageNotifier, String>((ref) {
  return UploadImageNotifier();
});
