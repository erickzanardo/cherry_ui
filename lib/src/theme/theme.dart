import 'package:cherry_ui/src/cherry_ui.dart';
import 'package:flutter/material.dart';

export 'button_theme.dart';
export 'card_theme.dart';

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
    this.cardTheme = const CherryCardTheme(
      mainCardBackgroundColor: Color(0xFF9c1e97),
      mainCardDecorationColor: Color(0xFFf5ec4c),
      secondaryCardBackgroundColor: Color(0xFFe8e8e8),
      secondaryCardDecorationColor: Color(0xFFf5ec4c),
      borderRadius: 32,
    ),
    this.displayFontColor = const Color(0xffc16ae3),
    this.headlineFontColor = const Color(0xff44284f),
    this.titleFontColor = const Color(0xff44284f),
    this.labelFontColor = const Color(0xff4a231d),
    this.bodyFontColor = const Color(0xff2d2726),
  });

  /// The background color of the scaffold.
  final Color scaffoldBackgroundColor;

  /// Theme for buttons.
  final CherryBaseButtonTheme baseButtonTheme;

  /// Theme for standard buttons.
  final CherryButtonTheme buttonTheme;

  /// Theme for circle buttons.
  final CherryCircleButtonTheme circleButtonTheme;

  /// Theme for cards.
  final CherryCardTheme cardTheme;

  /// The default font color for display texts.
  final Color displayFontColor;

  /// The default font color for headline texts.
  final Color headlineFontColor;

  /// The default font color for title texts.
  final Color titleFontColor;

  /// The default font color for label texts.
  final Color labelFontColor;

  /// The default font color for body texts.
  final Color bodyFontColor;

  /// Returns the material theme data.
  ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: displayFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 64,
          package: CherryUITokens.package,
        ),
        displayMedium: TextStyle(
          color: displayFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 48,
          package: CherryUITokens.package,
        ),
        displaySmall: TextStyle(
          color: displayFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 40,
          package: CherryUITokens.package,
        ),
        headlineLarge: TextStyle(
          color: headlineFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 32,
          package: CherryUITokens.package,
        ),
        headlineMedium: TextStyle(
          color: headlineFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 24,
          package: CherryUITokens.package,
        ),
        headlineSmall: TextStyle(
          color: headlineFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 20,
          package: CherryUITokens.package,
        ),
        titleLarge: TextStyle(
          color: titleFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 36,
          package: CherryUITokens.package,
        ),
        titleMedium: TextStyle(
          color: titleFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 30,
          package: CherryUITokens.package,
        ),
        titleSmall: TextStyle(
          color: titleFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 26,
          package: CherryUITokens.package,
        ),
        labelLarge: TextStyle(
          color: labelFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 28,
          package: CherryUITokens.package,
        ),
        labelMedium: TextStyle(
          color: labelFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 22,
          package: CherryUITokens.package,
        ),
        labelSmall: TextStyle(
          color: labelFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.w900,
          fontSize: 16,
          package: CherryUITokens.package,
        ),
        bodyLarge: TextStyle(
          color: bodyFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: 32,
          package: CherryUITokens.package,
        ),
        bodyMedium: TextStyle(
          color: bodyFontColor,
          fontFamily: CherryUITokens.fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: 24,
          package: CherryUITokens.package,
        ),
        bodySmall: TextStyle(
          color: bodyFontColor,
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
        cardTheme,
      ],
    );
  }

  /// Creates a copy of this theme but with the given fields replaced with the
  /// new values.
  CherryUITheme copyWith({
    Color? scaffoldBackgroundColor,
    CherryBaseButtonTheme? baseButtonTheme,
    CherryButtonTheme? buttonTheme,
    CherryCircleButtonTheme? circleButtonTheme,
    CherryCardTheme? cardTheme,
    Color? displayFontColor,
    Color? headlineFontColor,
    Color? titleFontColor,
    Color? labelFontColor,
    Color? bodyFontColor,
  }) {
    return CherryUITheme(
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      baseButtonTheme: baseButtonTheme ?? this.baseButtonTheme,
      buttonTheme: buttonTheme ?? this.buttonTheme,
      circleButtonTheme: circleButtonTheme ?? this.circleButtonTheme,
      cardTheme: cardTheme ?? this.cardTheme,
      displayFontColor: displayFontColor ?? this.displayFontColor,
      headlineFontColor: headlineFontColor ?? this.headlineFontColor,
      titleFontColor: titleFontColor ?? this.titleFontColor,
      labelFontColor: labelFontColor ?? this.labelFontColor,
      bodyFontColor: bodyFontColor ?? this.bodyFontColor,
    );
  }
}
