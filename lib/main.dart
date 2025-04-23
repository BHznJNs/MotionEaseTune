import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:motion_ease_tune/features/home/home.dart';

class AppEntry extends StatefulWidget {
  const AppEntry({super.key});

  @override
  State<StatefulWidget> createState() => _AppEntryState();
}
class _AppEntryState extends State<AppEntry> {
  @override
  Widget build(BuildContext context) {
    const defaultColotTheme = Color(0xFF448AFF);

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          title: 'MotionEaseTune',
          theme: ThemeData(
            colorScheme: lightDynamic ?? ColorScheme.fromSeed(
              seedColor: defaultColotTheme,
              brightness: Brightness.light,
            ),
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic ?? ColorScheme.fromSeed(
              seedColor: defaultColotTheme,
              brightness: Brightness.dark,
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

void main() {
  runApp(const AppEntry());
}
