import 'package:cherry_ui/src/cherry_ui.dart';
import 'package:flutter/material.dart';

export 'button_theme.dart';

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
  const CherryUITheme({
    this.scaffoldBackgroundColor = const Color(0xfff5ccc6),
    this.baseButtonTheme = const CherryBaseButtonTheme(
      affirmativeColor: Color(0xFF87e629),
      negativeColor: Color(0xFFe62929),
      informativeColor: Color(0xFF29aae6),
      neutralColor: Color(0xFFbbdded),
      pressedScale: 0.9,
      animationDuration: Duration(milliseconds: 45),
    ),
    this.buttonTheme = const CherryButtonTheme(
      padding: 16,
      borderRadius: 16,
      borderSize: 2,
      blurRadius: 12,
    ),
    this.circleButtonTheme = const CherryCircleButtonTheme(
      size: 45,
    ),
  });

  /// The background color of the scaffold.
  final Color scaffoldBackgroundColor;

  /// Theme for buttons.
  final CherryBaseButtonTheme baseButtonTheme;

  /// Theme for standard buttons.
  final CherryButtonTheme buttonTheme;

  /// Theme for circle buttons.
  final CherryCircleButtonTheme circleButtonTheme;

  /// Returns the material theme data.
  ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
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
      extensions: [
        baseButtonTheme,
        buttonTheme,
        circleButtonTheme,
      ],
    );
  }
}
