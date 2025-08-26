import 'package:flutter/material.dart';

/// A class with all design tokens for the Cherry UI design.
class CherryUITokens {
  /// Name of the package.
  static const String package = 'cherry_ui';

  /// Font family.
  static const String fontFamily = 'Cherry BombOne';
}

/// {@template cherry_ui_theme}
/// A theme for the Cherry UI design system.
/// {@endtemplate}
class CherryUITheme {
  /// {@macro cherry_ui_theme}
  const CherryUITheme();

  /// Returns the material theme data.
  ThemeData get themeData {
    return ThemeData(
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 64,
          package: CherryUITokens.package,
        ),
        headlineLarge: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 32,
          package: CherryUITokens.package,
        ),
        headlineSmall: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 20,
          package: CherryUITokens.package,
        ),
        labelLarge: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 28,
          package: CherryUITokens.package,
        ),
        labelMedium: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 22,
          package: CherryUITokens.package,
        ),
        labelSmall: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 16,
          package: CherryUITokens.package,
        ),
        bodyLarge: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: 32,
          package: CherryUITokens.package,
        ),
        bodyMedium: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: 24,
          package: CherryUITokens.package,
        ),
        bodySmall: TextStyle(
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: 20,
          package: CherryUITokens.package,
        ),
      ),
    );
  }
}
