import 'package:flutter/material.dart';

class SelectedColors {
  const SelectedColors(
      this.outerColor,
      this.innerColor,
      this.bottomsColor,
      this.shoesColor,
      );

  static const initialColors = SelectedColors(
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white
  );

  final Color outerColor;
  final Color innerColor;
  final Color bottomsColor;
  final Color shoesColor;
}