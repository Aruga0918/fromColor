import 'package:flutter/material.dart';

class UploadData {
  const UploadData({
    required this.itemColorValue,
    required this.localImagePath,
  });

  static const initialData = UploadData(itemColorValue: "ffffffff", localImagePath: "none");

  final String itemColorValue;
  final String localImagePath;
}