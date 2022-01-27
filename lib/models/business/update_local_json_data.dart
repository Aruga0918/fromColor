import 'package:from_color/preference/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

String _jsonEncoder({required Map<dynamic, dynamic> map}) {
  return jsonEncode(map);
}

Map<dynamic, dynamic> _jsonDecoder({required String json}) {
  return jsonDecode(json);
}

Future<void> updateMapLocalStorage({required String data, required String index, required PreferenceKey localPath}) async{
  final preference = Preference();
  final currentMap = _jsonDecoder(json: await preference.getString(localPath) ?? "{}");
  currentMap[index] = data;
  await preference.setString(key: localPath, value: _jsonEncoder(map: currentMap));
}

Future<String> getImgStringDataFromLocalStorage({required PreferenceKey localPath, required String index}) async{
  final preference = Preference();
  final currentMap = _jsonDecoder(json: await preference.getString(localPath) ?? "{}");
  print(currentMap);
  if (currentMap[index] == null) {
    print("There is not such image");
    return "noData";
  } else {
    return currentMap[index];
  }

}
