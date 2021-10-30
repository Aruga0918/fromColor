import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShoesColorNotifier extends StateNotifier<Color> {
  ShoesColorNotifier() : super(Colors.white); //初期値
  void setColor({required Color selectedColor}) {
    state = selectedColor;
  }
}

final shoesColorProvider = StateNotifierProvider<ShoesColorNotifier, Color>((ref){
  return ShoesColorNotifier();
});
