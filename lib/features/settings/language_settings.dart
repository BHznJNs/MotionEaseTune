import 'package:flutter/material.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';
import 'package:motion_ease_tune/providers/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  void onLanguageSelected(BuildContext context, LanguageOption? lang) {
    if (lang == null) return;
    final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
    languageProvider.setLocale(lang);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final languageProvider = Provider.of<LanguageProvider>(context);
    final languageListTiles = AppLocalizations.supportedLocales
      .map((locale) => LanguageOption.fromLocale(locale))
      .map((lang) {
        return RadioListTile<LanguageOption>.adaptive(
          title: Text(lang.toLanguageDisplayName()),
          value: lang,
          groupValue: languageProvider.language,
          onChanged: (lang) => onLanguageSelected(context, lang),
        );
      }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.languagesAppBarTitle)),
      body: ListView(
        children: [
          RadioListTile<LanguageOption>.adaptive(
          title: Text(l10n.systemLanguageOption),
          value: LanguageOption.system,
          groupValue: languageProvider.language,
          onChanged: (lang) => onLanguageSelected(context, lang),
        ),
          ...languageListTiles,
        ],
      ),
    );
  }
}