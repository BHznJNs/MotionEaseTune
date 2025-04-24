import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LanguageOption {
  system,
  english,
  simplifiedChinese;

  static LanguageOption fromLocale(Locale locale) {
    if (locale.languageCode == 'en') {
      return LanguageOption.english;
    } else
    if (locale.languageCode == 'zh') {
      return LanguageOption.simplifiedChinese;
    }
    throw Exception('Unresolved locale: $locale');
  }

  Locale? toLocale() {
    switch (this) {
      case LanguageOption.simplifiedChinese: return Locale('zh', 'CN');
      case LanguageOption.english: return Locale('en');
      case LanguageOption.system: return null;
    }
  }

  String toLanguageDisplayName() {
    switch (this) {
      case LanguageOption.simplifiedChinese: return '简体中文';
      case LanguageOption.english: return 'English';
      default: throw Exception('Unresolved locale: $this');
    }
  }
}

class LanguageProvider with ChangeNotifier {
  static const _langKey = 'language-index';
  LanguageOption _lang = LanguageOption.system;
  LanguageOption get language => _lang;

  LanguageProvider() {
    _loadLocalePreference();
  }

  void setLocale(LanguageOption newLang) async {
    if (_lang != newLang) {
      _lang = newLang;
      notifyListeners();
      _saveLocalePreference(newLang);
    }
  }

  void _loadLocalePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final int? langIndex = prefs.getInt(_langKey);
    if (langIndex != null && langIndex >= 0 && langIndex < LanguageOption.values.length) {
      _lang = LanguageOption.values[langIndex];
      notifyListeners();
    } else {
      _lang = LanguageOption.system;
      _saveLocalePreference(_lang);
      notifyListeners();
    }
  }

  void _saveLocalePreference(LanguageOption lang) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(_langKey, lang.index);
  }
}
