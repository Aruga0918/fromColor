import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OuterColorNotifier extends StateNotifier<Color> {
  OuterColorNotifier() : super(Colors.white); //初期値
  void setColor({required Color selectedColor}) {
    state = selectedColor;
  }
}

final outerColorProvider = StateNotifierProvider<OuterColorNotifier, Color>((ref){
  return OuterColorNotifier();
});
