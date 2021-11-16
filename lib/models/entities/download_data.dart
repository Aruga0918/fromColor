import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DownloadData {
  const DownloadData({
    required this.localImagePath,
    required this.remoteImagePath,
    required this.itemColorValue,

  });

  final String localImagePath;
  final String remoteImagePath;
  final String itemColorValue;

  static Future<DownloadData> snapshot2DLData({required DocumentSnapshot snapshot}) async{
    final Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return DownloadData(
        localImagePath: data["localImagePath"],
        remoteImagePath: data["remoteImagePath"],
        itemColorValue: data["itemColorValue"],
    );
  }
}