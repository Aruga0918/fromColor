import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/riverpods/color_notifier.dart';

void main() {
  late ColorNotifier colorTarget;
  setUp(() {
    final container = ProviderContainer();
    colorTarget = container.read(colorProvider.notifier);
  });
  test("riverpod colorNotifier set color test", (){
    colorTarget.setOuterColor(Colors.black);
    expect(colorTarget.state.selectedColors.outerColor, Colors.black);
    colorTarget.setInnerColor(Colors.black);
    expect(colorTarget.state.selectedColors.innerColor, Colors.black);
    colorTarget.setBottomsColor(Colors.black);
    expect(colorTarget.state.selectedColors.bottomsColor, Colors.black);
    colorTarget.setShoesColor(Colors.black);
    expect(colorTarget.state.selectedColors.shoesColor, Colors.black);
  });
  test("riverpod colorNotifier reverse sex test", (){
    colorTarget.reverseSex(); //initial bool is "true"
    expect(colorTarget.state.isGirl, false);
  });
}