//最低限のユーザー情報のみ保存
import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PreferenceKey {
  //ログイン保持のためのフラグ
  isLogin,
  //最後にどちらのイラストを使ったかの記録
  isGirl,
  //広告表示用カウント
  adCount
}

class Preference {
  Future<String> getString(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getString(EnumToString.convertToString(key)) ?? '';
  }

  Future<int> getInt(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getInt(EnumToString.convertToString(key)) ?? 0;
  }

  Future<void> setString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    preference.setString(EnumToString.convertToString(key), value);
  }

  Future<void> setInt({required PreferenceKey key, required int value}) async{
    final preference = await SharedPreferences.getInstance();
    preference.setInt(EnumToString.convertToString(key), value);
  }

  Future<void> setStringList(PreferenceKey key, List<String> value) async{
    final preference = await SharedPreferences.getInstance();
    preference.setStringList(EnumToString.convertToString(key), value);
  }

  Future<List<String>> getStringList(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getStringList(EnumToString.convertToString(key)) ?? [];
  }

  Future<void> setBool(PreferenceKey key, bool value) async{
    final preference = await SharedPreferences.getInstance();
    preference.setBool(EnumToString.convertToString(key), value);
  }

  Future<bool?> getBool(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getBool(EnumToString.convertToString(key));
  }

  Future<void> addString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.add(value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> insertString({
    required PreferenceKey key,
    required String value,
    required int index
  }) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.insert(index, value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> removeString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.remove(value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> clearString({required PreferenceKey key}) async{
    final preference = await SharedPreferences.getInstance();
    await preference.setString(EnumToString.convertToString(key), "");
  }
}