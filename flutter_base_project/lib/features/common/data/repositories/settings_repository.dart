import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  Future<void> saveLanguage(String language) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('language', language);
  }

  Future<String> getLanguage() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('language') ?? 'en';
  }
}