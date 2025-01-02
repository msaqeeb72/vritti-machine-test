import 'package:flutter/material.dart';

class AppTheme {

  const AppTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6400CD),
      surfaceTint: Color(0xff435e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd7e2ff),
      onPrimaryContainer: Color(0xff001a40),
      secondary: Color(0xff8e4d31),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbce),
      onSecondaryContainer: Color(0xff370e00),
      tertiary: Color(0xff196585),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc2e8ff),
      onTertiaryContainer: Color(0xff001e2c),
      error: Color(0xff904a45),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff3b0908),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbfc8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffacc7ff),
      primaryFixed: Color(0xffd7e2ff),
      onPrimaryFixed: Color(0xff001a40),
      primaryFixedDim: Color(0xffacc7ff),
      onPrimaryFixedVariant: Color(0xff2a4678),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff370e00),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff71361c),
      tertiaryFixed: Color(0xffc2e8ff),
      onTertiaryFixed: Color(0xff001e2c),
      tertiaryFixedDim: Color(0xff8ecff2),
      onTertiaryFixedVariant: Color(0xff004d67),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff264273),
      surfaceTint: Color(0xff435e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5a74a9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6c3219),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa96245),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004862),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff387c9c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff6e302b),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffaa6059),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3b4446),
      outline: Color(0xff576162),
      outlineVariant: Color(0xff737c7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffacc7ff),
      primaryFixed: Color(0xff5a74a9),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff405c8e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa96245),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8b4a2f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff387c9c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff156382),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00214d),
      surfaceTint: Color(0xff435e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff264273),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff421300),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c3219),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002535),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004862),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff44100e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff6e302b),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1c2527),
      outline: Color(0xff3b4446),
      outlineVariant: Color(0xff3b4446),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffe6ecff),
      primaryFixed: Color(0xff264273),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff092b5c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c3219),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff501d05),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004862),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003143),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffacc7ff),
      surfaceTint: Color(0xffacc7ff),
      onPrimary: Color(0xff0f2f60),
      primaryContainer: Color(0xff2a4678),
      onPrimaryContainer: Color(0xffd7e2ff),
      secondary: Color(0xffffb598),
      onSecondary: Color(0xff552008),
      secondaryContainer: Color(0xff71361c),
      onSecondaryContainer: Color(0xffffdbce),
      tertiary: Color(0xff8ecff2),
      onTertiary: Color(0xff003548),
      tertiaryContainer: Color(0xff004d67),
      onTertiaryContainer: Color(0xffc2e8ff),
      error: Color(0xffffb3ac),
      onError: Color(0xff571e1a),
      errorContainer: Color(0xff73332f),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbfc8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff435e91),
      primaryFixed: Color(0xffd7e2ff),
      onPrimaryFixed: Color(0xff001a40),
      primaryFixedDim: Color(0xffacc7ff),
      onPrimaryFixedVariant: Color(0xff2a4678),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff370e00),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff71361c),
      tertiaryFixed: Color(0xffc2e8ff),
      onTertiaryFixed: Color(0xff001e2c),
      tertiaryFixedDim: Color(0xff8ecff2),
      onTertiaryFixedVariant: Color(0xff004d67),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb3cbff),
      surfaceTint: Color(0xffacc7ff),
      onPrimary: Color(0xff001536),
      primaryContainer: Color(0xff7691c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbba1),
      onSecondary: Color(0xff2e0b00),
      secondaryContainer: Color(0xffca7d5e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff92d3f7),
      onTertiary: Color(0xff001924),
      tertiaryContainer: Color(0xff5798ba),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab3),
      onError: Color(0xff330404),
      errorContainer: Color(0xffcc7b74),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xfff6fcfd),
      onSurfaceVariant: Color(0xffc3ccce),
      outline: Color(0xff9ba5a6),
      outlineVariant: Color(0xff7b8587),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff2b4779),
      primaryFixed: Color(0xffd7e2ff),
      onPrimaryFixed: Color(0xff00102d),
      primaryFixedDim: Color(0xffacc7ff),
      onPrimaryFixedVariant: Color(0xff163566),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff260700),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff5c260d),
      tertiaryFixed: Color(0xffc2e8ff),
      onTertiaryFixed: Color(0xff00131d),
      tertiaryFixedDim: Color(0xff8ecff2),
      onTertiaryFixedVariant: Color(0xff003b50),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffacc7ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb3cbff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbba1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff8fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff92d3f7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab3),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff3fcfe),
      outline: Color(0xffc3ccce),
      outlineVariant: Color(0xffc3ccce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff042959),
      primaryFixed: Color(0xffdee7ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb3cbff),
      onPrimaryFixedVariant: Color(0xff001536),
      secondaryFixed: Color(0xffffe0d6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbba1),
      onSecondaryFixedVariant: Color(0xff2e0b00),
      tertiaryFixed: Color(0xffccebff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff92d3f7),
      onTertiaryFixedVariant: Color(0xff001924),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.onError,
    );
  }

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