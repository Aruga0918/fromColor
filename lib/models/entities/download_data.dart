import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//TODO : storePathを追加して削除に対応するようにする
class DownloadData {
  const DownloadData({
    required this.localImagePath,
    required this.remoteImagePath,
    required this.itemColorValue,
    required this.fileName,
    createdAt,
  });

  final String localImagePath;
  final String remoteImagePath;
  final String itemColorValue;
  final String? fileName;

  static Future<DownloadData> snapshot2DLData({required DocumentSnapshot snapshot}) async{
    final Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return DownloadData(
        localImagePath: data["localImagePath"],
        remoteImagePath: data["remoteImagePath"],
        itemColorValue: data["itemColorValue"],
      fileName: data["fileName"] ?? null,
      createdAt: data["fileName"].substring(data["fileName"].lastIndexOf("/")+1) ?? null,
      //TODO : storePath: data["storePath"]
    );
  }

  static Future<List<DownloadData>> sortByTargetColor({required String color, required List<DownloadData> list}) async{
    if (list.length < 2) {
      return list;
    }
    final target = list.where((DownloadData item) => item.itemColorValue == color).toList();
    final leftOvers = list.where((DownloadData item) => item.itemColorValue != color).toList();
    target.addAll(leftOvers);
    return target;
  }
}