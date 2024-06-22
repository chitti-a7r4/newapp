import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static const String _keyGlassCount = 'glass_count';
  static const String _keySipCount = 'sip_count';

  Future<void> saveGlassCount(int count) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyGlassCount, count);
  }

  Future<int?> getGlassCount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyGlassCount);
  }

  Future<void> saveSipCount(int count) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keySipCount, count);
  }

  Future<int?> getSipCount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keySipCount);
  }

  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
