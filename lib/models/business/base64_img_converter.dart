import 'dart:convert';
import 'dart:io' as io;

import 'dart:typed_data';

import 'package:flutter/widgets.dart';

Future<String> ImgToBase64Converter({required io.File imgData}) async{
  final  byte = await imgData.readAsBytes();
  return _base64String(byte);
}

String _base64String(Uint8List data) {
  return base64Encode(data);
}

Uint8List _base64Byte(String base64) {
  return base64Decode(base64);
}

Future<Image> base64ToImgConverter({required String base64}) async{
  final data = _base64Byte(base64);
  return Image.memory(data);
}