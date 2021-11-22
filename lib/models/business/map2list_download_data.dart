import 'package:from_color/models/entities/download_data.dart';

List<DownloadData> mapToList({required Map<String, List<DownloadData>> map}) {
  final downloadDataList = map.values.expand((_) => _).toList();
  return downloadDataList;
}