import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/selected_colors.dart';

class UploadColorNotifier extends StateNotifier<Color> {
  UploadColorNotifier() : super(Colors.white); //初期値

  void showColorPicker(BuildContext context) {
    Color pickedColor = state;
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
                _setColor(newColor: pickedColor);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }


  void _setColor({required Color newColor}) {
    state = newColor;
  }
}

  final uploadColorProvider = StateNotifierProvider<UploadColorNotifier, Color>((ref) {
    return UploadColorNotifier();
  });
