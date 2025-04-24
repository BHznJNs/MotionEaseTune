import 'package:flutter/material.dart';
import 'package:motion_ease_tune/features/settings/about_page.dart';
import 'package:motion_ease_tune/features/settings/language_settings.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';
import 'package:motion_ease_tune/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageSettingsItem = _SettingItem(
      title: l10n.languagesSettingTitle,
      icon: Icons.language,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const LanguageSettings(),
        ));
      },
    );
    final themeDropdownItems = [
      DropdownMenuItem(
        value: ThemeMode.light,
        child: Text(l10n.lightThemeOption),
      ),
      DropdownMenuItem(
        value: ThemeMode.dark,
        child: Text(l10n.darkThemeOption),
      ),
      DropdownMenuItem(
        value: ThemeMode.system,
        child: Text(l10n.systemThemeOption),
      ),
    ];
    final themeSettingsItem = _SettingItem(
      title: l10n.applicationThemeSettingTitle,
      icon: Icons.brightness_4,
      editor: DropdownButton(
        value: themeProvider.themeMode,
        items: themeDropdownItems,
        onChanged: (ThemeMode? newTheme) {
          if (newTheme == null) return;
          themeProvider.setThemeMode(newTheme);
        },
      ),
      onTap: null,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsAppBarTitle)
      ),
      body: ListView(
        children: [
          themeSettingsItem,
          languageSettingsItem,
          _SettingItem(
            title: l10n.aboutTitle,
            icon: Icons.info,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}

class _SettingItem extends StatelessWidget {
  const _SettingItem({
    required this.title,
    required this.icon,
    required this.onTap,
    this.editor,
    this.description,
  });

  final String title;
  final String? description;
  final IconData icon;
  final VoidCallback? onTap;
  final Widget? editor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18)),
        subtitle: description != null
          ? Text(description!)
          : null,
        leading: Icon(icon),
        trailing: editor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
