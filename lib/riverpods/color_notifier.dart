import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/selected_colors.dart';

part 'color_notifier.freezed.dart';

@freezed
class ColorState with _$ColorState {
  const factory ColorState({
    @Default(SelectedColors.initialColors) SelectedColors selectedColors
}) = _ColorState;
}


class ColorNotifier extends StateNotifier<ColorState> {
  ColorNotifier() : super(const ColorState());//初期値

  void showOuterColorPicker(BuildContext context) {
    Color outerPicker = state.selectedColors.outerColor;
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
    Color innerPicker = state.selectedColors.innerColor;
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
    Color bottomsPicker = state.selectedColors.bottomsColor;
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
    Color shoesPicker = state.selectedColors.shoesColor;
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

    final currentTops = state.selectedColors.innerColor;
    final currentBottoms = state.selectedColors.bottomsColor;
    final currentShoes = state.selectedColors.shoesColor;

    state = state.copyWith(
        selectedColors: SelectedColors(
        newOuterColor,
        currentTops,
        currentBottoms,
        currentShoes
        )
    );
  }

  void _setInnerColor({required Color newInnerColor}) {

    final currentOuter = state.selectedColors.outerColor;
    final currentBottoms = state.selectedColors.bottomsColor;
    final currentShoes = state.selectedColors.shoesColor;

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        newInnerColor,
        currentBottoms,
        currentShoes
        )
    );
  }

  void _setBottomsColor({required Color newBottomsColor}) {

    final currentOuter = state.selectedColors.outerColor;
    final currentTops = state.selectedColors.innerColor;
    final currentShoes = state.selectedColors.shoesColor;

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        currentTops,
        newBottomsColor,
        currentShoes
        )
    );
  }

  void _setShoesColor({required Color newShoesColor}) {

    final currentOuter = state.selectedColors.outerColor;
    final currentTops = state.selectedColors.innerColor;
    final currentBottoms = state.selectedColors.bottomsColor;

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        currentTops,
        currentBottoms,
        newShoesColor
        )
    );
  }
}

final colorProvider = StateNotifierProvider<ColorNotifier,ColorState>((ref)
  => ColorNotifier()
);
