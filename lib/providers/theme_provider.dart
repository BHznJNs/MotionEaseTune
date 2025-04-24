import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const _themeModeKey = 'theme-mode-index';
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  ThemeProvider() {
    _loadThemePreference();
  }

  void setThemeMode(ThemeMode newMode) async {
    if (_themeMode != newMode) {
      _themeMode = newMode;
      notifyListeners();
      _saveThemePreference(newMode);
    }
  }

  void _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final int? themeIndex = prefs.getInt(_themeModeKey);
    if (themeIndex != null && themeIndex >= 0 && themeIndex < ThemeMode.values.length) {
      _themeMode = ThemeMode.values[themeIndex];
      notifyListeners();
    } else {
      _themeMode = ThemeMode.system;
      _saveThemePreference(_themeMode);
      notifyListeners();
    }
  }
  void _saveThemePreference(ThemeMode option) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(_themeModeKey, option.index);
  }
}
