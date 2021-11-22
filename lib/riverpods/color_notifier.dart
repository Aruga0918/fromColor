import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/selected_colors.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/riverpods/palette_download_bottoms_notifier.dart';
import 'package:from_color/riverpods/palette_download_outer_notifier.dart';
import 'package:from_color/riverpods/palette_download_shoes_notifier.dart';
import 'package:from_color/riverpods/palette_download_tops_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'color_notifier.freezed.dart';

@freezed
class ColorState with _$ColorState {
  const factory ColorState({
    @Default(SelectedColors.initialColors) SelectedColors selectedColors,
    @Default(true) bool isGirl
}) = _ColorState;
}


class ColorNotifier extends StateNotifier<ColorState> {
  ColorNotifier(this.ref) : super(const ColorState()) {
    _initState();
  }//初期値

  final ProviderReference ref;

  Future<void> _initState() async{
    final  bool? lastSex = await Preference().getBool(PreferenceKey.isGirl);
    if (lastSex == null) {
      Preference().setBool(PreferenceKey.isGirl, true);
    } else{
      state = state.copyWith(isGirl: lastSex);
    }
  }

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
                  setOuterColor(outerPicker);
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
                setInnerColor(innerPicker);
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
                setBottomsColor(bottomsPicker);
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
                setShoesColor(shoesPicker);
                Navigator.of(alertContext).pop();
              },
            ),
          ],
        );
      },
    );
  }


  void setOuterColor(Color newOuterColor) {

    final currentTops = state.selectedColors.innerColor;
    final currentBottoms = state.selectedColors.bottomsColor;
    final currentShoes = state.selectedColors.shoesColor;
    if (ref.read(loginProvider.notifier).state.isLogin) {
      ref.read(paletteDownloadOuterProvider.notifier).setDataListByColor(newOuterColor);
    }

    state = state.copyWith(
        selectedColors: SelectedColors(
        newOuterColor,
        currentTops,
        currentBottoms,
        currentShoes
        )
    );
  }

  void setInnerColor(Color newInnerColor) {

    final currentOuter = state.selectedColors.outerColor;
    final currentBottoms = state.selectedColors.bottomsColor;
    final currentShoes = state.selectedColors.shoesColor;
    if (ref.read(loginProvider.notifier).state.isLogin) {
      ref.read(paletteDownloadTopsProvider.notifier).setDataListByColor(newInnerColor);
    }
    ref.read(paletteDownloadTopsProvider.notifier).setDataListByColor(newInnerColor);

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        newInnerColor,
        currentBottoms,
        currentShoes
        )
    );
  }

  void setBottomsColor(Color newBottomsColor) {

    final currentOuter = state.selectedColors.outerColor;
    final currentTops = state.selectedColors.innerColor;
    final currentShoes = state.selectedColors.shoesColor;
    if (ref.read(loginProvider.notifier).state.isLogin) {
      ref.read(paletteDownloadBottomsProvider.notifier).setDataListByColor(newBottomsColor);
    }

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        currentTops,
        newBottomsColor,
        currentShoes
        )
    );
  }

  void setShoesColor(Color newShoesColor) {

    final currentOuter = state.selectedColors.outerColor;
    final currentTops = state.selectedColors.innerColor;
    final currentBottoms = state.selectedColors.bottomsColor;
    if (ref.read(loginProvider.notifier).state.isLogin) {
      ref.read(paletteDownloadShoesProvider.notifier).setDataListByColor(newShoesColor);
    }

    state = state.copyWith(
        selectedColors: SelectedColors(
        currentOuter,
        currentTops,
        currentBottoms,
        newShoesColor
        )
    );
  }

  void reverseSex(){
    Preference().setBool(PreferenceKey.isGirl, !state.isGirl);
    state = state.copyWith(isGirl: !state.isGirl);
  }
}

final colorProvider = StateNotifierProvider<ColorNotifier,ColorState>((ref)
  => ColorNotifier(ref)
);
