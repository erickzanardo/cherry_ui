import 'package:flutter/material.dart';

/// Types of Cherry UI cards.
enum CherryRibbonType {
  /// Main card type.
  main,

  /// Secondary card type.
  secondary,
}

/// {@template cherry_ribbon_theme}
/// A theme extension for customizing the appearance of Cherry UI cards.
/// {@endtemplate}
class CherryRibbonTheme extends ThemeExtension<CherryRibbonTheme> {
  /// {@macro cherry_ribbon_theme}
  const CherryRibbonTheme({
    required this.mainRibbonBackgroundColor,
    required this.mainRibbonDecorationColor,
    required this.secondaryRibbonBackgroundColor,
    required this.secondaryRibbonDecorationColor,
  });

  /// Color for the main background of the card.
  final Color mainRibbonBackgroundColor;

  /// Color for the decoration border of the card.
  final Color mainRibbonDecorationColor;

  /// Color for the secondary background of the card.
  final Color secondaryRibbonBackgroundColor;

  /// Color for the secondary decoration border of the card.
  final Color secondaryRibbonDecorationColor;

  /// Gets the background color associated with the given [CherryRibbonTheme].
  Color backgroundColorForType(CherryRibbonType type) {
    switch (type) {
      case CherryRibbonType.main:
        return mainRibbonBackgroundColor;
      case CherryRibbonType.secondary:
        return secondaryRibbonBackgroundColor;
    }
  }

  /// Gets the decoration color associated with the given [CherryRibbonTheme].
  Color decorationColorForType(CherryRibbonType type) {
    switch (type) {
      case CherryRibbonType.main:
        return mainRibbonDecorationColor;
      case CherryRibbonType.secondary:
        return secondaryRibbonDecorationColor;
    }
  }

  @override
  CherryRibbonTheme copyWith({
    Color? mainRibbonBackgroundColor,
    Color? mainRibbonDecorationColor,
    Color? secondaryRibbonBackgroundColor,
    Color? secondaryRibbonDecorationColor,
  }) {
    return CherryRibbonTheme(
      mainRibbonBackgroundColor:
          mainRibbonBackgroundColor ?? this.mainRibbonBackgroundColor,
      mainRibbonDecorationColor:
          mainRibbonDecorationColor ?? this.mainRibbonDecorationColor,
      secondaryRibbonBackgroundColor:
          secondaryRibbonBackgroundColor ?? this.secondaryRibbonBackgroundColor,
      secondaryRibbonDecorationColor:
          secondaryRibbonDecorationColor ?? this.secondaryRibbonDecorationColor,
    );
  }

  @override
  ThemeExtension<CherryRibbonTheme> lerp(
    covariant ThemeExtension<CherryRibbonTheme>? other,
    double t,
  ) {
    if (other is! CherryRibbonTheme) {
      return this;
    }
    return CherryRibbonTheme(
      mainRibbonBackgroundColor: Color.lerp(
        mainRibbonBackgroundColor,
        other.mainRibbonBackgroundColor,
        t,
      )!,
      mainRibbonDecorationColor: Color.lerp(
        mainRibbonDecorationColor,
        other.mainRibbonDecorationColor,
        t,
      )!,
      secondaryRibbonBackgroundColor: Color.lerp(
        secondaryRibbonBackgroundColor,
        other.secondaryRibbonBackgroundColor,
        t,
      )!,
      secondaryRibbonDecorationColor: Color.lerp(
        secondaryRibbonDecorationColor,
        other.secondaryRibbonDecorationColor,
        t,
      )!,
    );
  }
}
