import 'package:shared_preferences/shared_preferences.dart';

import 'prefs.dart';

export 'prefs.dart';

class SharedPreferencesHelper {
  final SharedPreferences _preferences;

  SharedPreferencesHelper({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  Future<void> clear() async => await _preferences.clear();

  // IsLoggedIn
  bool get isLoggedIn => _preferences.getBool(Prefs.isLoggedIn) ?? true;
  Future<bool> setIsLoggedIn(bool value) async => await _preferences.setBool(Prefs.isLoggedIn, value);

  // Settings
  String? getSettings() => _preferences.getString(Prefs.settings);
  Future<void> setSettings(String value) async => await _preferences.setString(Prefs.settings, value);
}
