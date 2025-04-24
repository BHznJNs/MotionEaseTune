import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:motion_ease_tune/providers/language_provider.dart';
import 'package:provider/provider.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';
import 'package:motion_ease_tune/features/home/home.dart';
import 'package:motion_ease_tune/providers/theme_provider.dart';
import 'package:motion_ease_tune/theme.dart';

class AppEntry extends StatefulWidget {
  const AppEntry({super.key});

  @override
  State<StatefulWidget> createState() => _AppEntryState();
}
class _AppEntryState extends State<AppEntry> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          title: 'MotionEaseTune',
          theme: ThemeData(
            colorScheme: MaterialTheme.lightScheme(),
          ),
          darkTheme: ThemeData(
            colorScheme: MaterialTheme.darkScheme(),
          ),
          themeMode: themeProvider.themeMode,
          locale: languageProvider.language.toLocale(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        );
      },
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final entry = MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => LanguageProvider()),
    ],
    child: const AppEntry(),
  );
  runApp(entry);
}
