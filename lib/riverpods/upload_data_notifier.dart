import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/upload_data.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;
import 'package:from_color/models/firebase/image_uploader.dart';

part 'upload_data_notifier.freezed.dart';

@freezed
class UploadDataState with _$UploadDataState {
  const factory UploadDataState({
    @Default("") String localImagePath,
    @Default(Colors.transparent) Color itemColorValue
  }) = _UploadDataState;
}

class UploadDataController extends StateNotifier<UploadDataState> {
  UploadDataController() : super(const UploadDataState());
  void showColorPicker(BuildContext context) {
    Color pickedColor = state.itemColorValue;
    showDialog(
      context: context,
      builder: (alertContext) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: MaterialPicker(
              pickerColor: pickedColor,
              onColorChanged: (color) => pickedColor = color,
            ),
          ),
          actions: <Widget>[
            SimpleDialogOption(
              child: const Text('決定'),
              onPressed: () {
                state = state.copyWith(itemColorValue: pickedColor);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void getImagePath({required BuildContext context}) async{
    final imagePath = await ImageUploader.selectImage(context);
    if (imagePath != null) {
      state = state.copyWith(localImagePath: imagePath);
    } else {
      print("画像選択に失敗しました");
    }
  }


}

final uploadDataProvider = StateNotifierProvider<UploadDataController, UploadDataState>((ref)
  => UploadDataController()
);