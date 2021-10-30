import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InnerColorNotifier extends StateNotifier<Color> {
  InnerColorNotifier() : super(Colors.white); //初期値
  void setColor({required Color selectedColor}) {
    state = selectedColor;
  }
}

final innerColorProvider = StateNotifierProvider<InnerColorNotifier, Color>((ref){
  return InnerColorNotifier();
});
