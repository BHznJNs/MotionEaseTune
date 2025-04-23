import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff865308),
      surfaceTint: Color(0xff865308),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff1ad5f),
      onPrimaryContainer: Color(0xff6c4000),
      secondary: Color(0xff75593a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffdd6af),
      onSecondaryContainer: Color(0xff785b3c),
      tertiary: Color(0xff5a6414),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb6c269),
      onTertiaryContainer: Color(0xff464f00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff201b15),
      onSurfaceVariant: Color(0xff514438),
      outline: Color(0xff847466),
      outlineVariant: Color(0xffd6c3b3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f29),
      inversePrimary: Color(0xfffeb969),
      primaryFixed: Color(0xffffddbb),
      onPrimaryFixed: Color(0xff2b1700),
      primaryFixedDim: Color(0xfffeb969),
      onPrimaryFixedVariant: Color(0xff673d00),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff2b1701),
      secondaryFixedDim: Color(0xffe5c09a),
      onSecondaryFixedVariant: Color(0xff5b4225),
      tertiaryFixed: Color(0xffdeea8c),
      onTertiaryFixed: Color(0xff191e00),
      tertiaryFixedDim: Color(0xffc2ce73),
      onTertiaryFixedVariant: Color(0xff424b00),
      surfaceDim: Color(0xffe4d8cf),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef1e8),
      surfaceContainer: Color(0xfff8ece2),
      surfaceContainerHigh: Color(0xfff2e6dd),
      surfaceContainerHighest: Color(0xffede0d7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff502e00),
      surfaceTint: Color(0xff865308),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff986119),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff493116),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff856747),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff333a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff687323),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff15100b),
      onSurfaceVariant: Color(0xff403428),
      outline: Color(0xff5d5043),
      outlineVariant: Color(0xff796a5d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f29),
      inversePrimary: Color(0xfffeb969),
      primaryFixed: Color(0xff986119),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7b4900),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff856747),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6b4f31),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff687323),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff505a09),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd0c4bc),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef1e8),
      surfaceContainer: Color(0xfff2e6dd),
      surfaceContainerHigh: Color(0xffe7dbd1),
      surfaceContainerHighest: Color(0xffdbd0c6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff422500),
      surfaceTint: Color(0xff865308),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6a3f00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3e270d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5e4427),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff292f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff454e00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff352a1f),
      outlineVariant: Color(0xff54473a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f29),
      inversePrimary: Color(0xfffeb969),
      primaryFixed: Color(0xff6a3f00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4b2b00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5e4427),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff452e13),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff454e00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2f3600),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2b7ae),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbeee5),
      surfaceContainer: Color(0xffede0d7),
      surfaceContainerHigh: Color(0xffded2c9),
      surfaceContainerHighest: Color(0xffd0c4bc),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffcd99),
      surfaceTint: Color(0xfffeb969),
      onPrimary: Color(0xff482900),
      primaryContainer: Color(0xfff1ad5f),
      onPrimaryContainer: Color(0xff6c4000),
      secondary: Color(0xffe5c09a),
      onSecondary: Color(0xff432c11),
      secondaryContainer: Color(0xff5e4427),
      onSecondaryContainer: Color(0xffd6b28d),
      tertiary: Color(0xffd2de82),
      onTertiary: Color(0xff2d3400),
      tertiaryContainer: Color(0xffb6c269),
      onTertiaryContainer: Color(0xff464f00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff18120d),
      onSurface: Color(0xffede0d7),
      onSurfaceVariant: Color(0xffd6c3b3),
      outline: Color(0xff9e8e7f),
      outlineVariant: Color(0xff514438),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0d7),
      inversePrimary: Color(0xff865308),
      primaryFixed: Color(0xffffddbb),
      onPrimaryFixed: Color(0xff2b1700),
      primaryFixedDim: Color(0xfffeb969),
      onPrimaryFixedVariant: Color(0xff673d00),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff2b1701),
      secondaryFixedDim: Color(0xffe5c09a),
      onSecondaryFixedVariant: Color(0xff5b4225),
      tertiaryFixed: Color(0xffdeea8c),
      onTertiaryFixed: Color(0xff191e00),
      tertiaryFixedDim: Color(0xffc2ce73),
      onTertiaryFixedVariant: Color(0xff424b00),
      surfaceDim: Color(0xff18120d),
      surfaceBright: Color(0xff3f3832),
      surfaceContainerLowest: Color(0xff120d08),
      surfaceContainerLow: Color(0xff201b15),
      surfaceContainer: Color(0xff241f19),
      surfaceContainerHigh: Color(0xff2f2923),
      surfaceContainerHighest: Color(0xff3a342d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd5aa),
      surfaceTint: Color(0xfffeb969),
      onPrimary: Color(0xff392000),
      primaryContainer: Color(0xfff1ad5f),
      onPrimaryContainer: Color(0xff442700),
      secondary: Color(0xfffdd5ae),
      onSecondary: Color(0xff362107),
      secondaryContainer: Color(0xffac8b68),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd7e487),
      onTertiary: Color(0xff232800),
      tertiaryContainer: Color(0xffb6c269),
      onTertiaryContainer: Color(0xff2b3100),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff18120d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffecd9c8),
      outline: Color(0xffc1af9f),
      outlineVariant: Color(0xff9e8d7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0d7),
      inversePrimary: Color(0xff693e00),
      primaryFixed: Color(0xffffddbb),
      onPrimaryFixed: Color(0xff1d0e00),
      primaryFixedDim: Color(0xfffeb969),
      onPrimaryFixedVariant: Color(0xff502e00),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff1d0e00),
      secondaryFixedDim: Color(0xffe5c09a),
      onSecondaryFixedVariant: Color(0xff493116),
      tertiaryFixed: Color(0xffdeea8c),
      onTertiaryFixed: Color(0xff0f1300),
      tertiaryFixedDim: Color(0xffc2ce73),
      onTertiaryFixedVariant: Color(0xff333a00),
      surfaceDim: Color(0xff18120d),
      surfaceBright: Color(0xff4b433c),
      surfaceContainerLowest: Color(0xff0b0703),
      surfaceContainerLow: Color(0xff221d17),
      surfaceContainer: Color(0xff2d2721),
      surfaceContainerHigh: Color(0xff38312b),
      surfaceContainerHighest: Color(0xff443c36),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeddd),
      surfaceTint: Color(0xfffeb969),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfffab566),
      onPrimaryContainer: Color(0xff150800),
      secondary: Color(0xffffeddd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe1bc96),
      onSecondaryContainer: Color(0xff150800),
      tertiary: Color(0xffebf898),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffbeca70),
      onTertiaryContainer: Color(0xff0a0d00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff18120d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffeddd),
      outlineVariant: Color(0xffd2bfaf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0d7),
      inversePrimary: Color(0xff693e00),
      primaryFixed: Color(0xffffddbb),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfffeb969),
      onPrimaryFixedVariant: Color(0xff1d0e00),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe5c09a),
      onSecondaryFixedVariant: Color(0xff1d0e00),
      tertiaryFixed: Color(0xffdeea8c),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc2ce73),
      onTertiaryFixedVariant: Color(0xff0f1300),
      surfaceDim: Color(0xff18120d),
      surfaceBright: Color(0xff564f48),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff241f19),
      surfaceContainer: Color(0xff362f29),
      surfaceContainerHigh: Color(0xff413a34),
      surfaceContainerHighest: Color(0xff4d453f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
