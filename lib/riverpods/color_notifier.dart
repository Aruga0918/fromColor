import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/selected_colors.dart';

class ColorNotifier extends StateNotifier<SelectedColors> {
  ColorNotifier() : super(SelectedColors.initialColors);//初期値

  void showOuterColorPicker(BuildContext context) {
    Color outerPicker = state.outerColor;
    showDialog(
        context: context,
        builder: (alertContext) {
          return AlertDialog(
            title: const Text('Pick a color!'),
            content: SingleChildScrollView(
              child: MaterialPicker(
                pickerColor: outerPicker,
                onColorChanged: (color) => outerPicker = color,
              ),
            ),
            actions: <Widget>[
              SimpleDialogOption(
                child: const Text('決定'),
                onPressed: () {
                  _setOuterColor(newOuterColor: outerPicker);
                  Navigator.of(alertContext).pop();
                },
              ),
            ],
          );
        },
    );
  }

  void showInnerColorPicker(BuildContext context) {
    Color innerPicker = state.innerColor;
    showDialog(
      context: context,
      builder: (alertContext) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: MaterialPicker(
              pickerColor: innerPicker,
              onColorChanged: (color) => innerPicker = color,
            ),
          ),
          actions: <Widget>[
            SimpleDialogOption(
              child: const Text('決定'),
              onPressed: () {
                _setInnerColor(newInnerColor: innerPicker);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showBottomsColorPicker(BuildContext context) {
    Color bottomsPicker = state.bottomsColor;
    showDialog(
      context: context,
      builder: (alertContext) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: MaterialPicker(
              pickerColor: bottomsPicker,
              onColorChanged: (color) => bottomsPicker = color,
            ),
          ),
          actions: <Widget>[
            SimpleDialogOption(
              child: const Text('決定'),
              onPressed: () {
                _setBottomsColor(newBottomsColor: bottomsPicker);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showShoesColorPicker(BuildContext context) {
    Color shoesPicker = state.shoesColor;
    showDialog(
      context: context,
      builder: (alertContext) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: MaterialPicker(
              pickerColor: shoesPicker,
              onColorChanged: (color) => shoesPicker = color,
            ),
          ),
          actions: <Widget>[
            SimpleDialogOption(
              child: const Text('決定'),
              onPressed: () {
                _setShoesColor(newShoesColor: shoesPicker);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }


  void _setOuterColor({required Color newOuterColor}) {
    state = SelectedColors(
        newOuterColor,
        state.innerColor,
        state.bottomsColor,
        state.shoesColor
    );
  }

  void _setInnerColor({required Color newInnerColor}) {
    state = SelectedColors(
        state.outerColor,
        newInnerColor,
        state.bottomsColor,
        state.shoesColor
    );
  }

  void _setBottomsColor({required Color newBottomsColor}) {
    state = SelectedColors(
        state.outerColor,
        state.innerColor,
        newBottomsColor,
        state.shoesColor
    );
  }

  void _setShoesColor({required Color newShoesColor}) {
    state = SelectedColors(
        state.outerColor,
        state.innerColor,
        state.bottomsColor,
        newShoesColor
    );
  }
}

final colorProvider = StateNotifierProvider<ColorNotifier, SelectedColors>((ref){
  return ColorNotifier();
});
