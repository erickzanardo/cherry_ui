import 'dart:ui';

import 'package:flutter/material.dart';

/// Types of Cherry UI cards.
enum CherryCardType {
  /// Main card type.
  main,

  /// Secondary card type.
  secondary,
}

/// {@template cherry_card_theme}
/// A theme extension for customizing the appearance of Cherry UI cards.
/// {@endtemplate}
class CherryCardTheme extends ThemeExtension<CherryCardTheme> {
  /// {@macro cherry_card_theme}
  const CherryCardTheme({
    required this.mainCardBackgroundColor,
    required this.mainCardDecorationColor,
    required this.secondaryCardBackgroundColor,
    required this.secondaryCardDecorationColor,
    required this.borderRadius,
  });

  /// Color for the main background of the card.
  final Color mainCardBackgroundColor;

  /// Color for the decoration border of the card.
  final Color mainCardDecorationColor;

  /// Color for the secondary background of the card.
  final Color secondaryCardBackgroundColor;

  /// Color for the secondary decoration border of the card.
  final Color secondaryCardDecorationColor;

  /// The border radius of the card.
  final double borderRadius;

  /// Gets the background color associated with the given [CherryCardTheme].
  Color backgroundColorForType(CherryCardType type) {
    switch (type) {
      case CherryCardType.main:
        return mainCardBackgroundColor;
      case CherryCardType.secondary:
        return secondaryCardBackgroundColor;
    }
  }

  /// Gets the decoration color associated with the given [CherryCardTheme].
  Color decorationColorForType(CherryCardType type) {
    switch (type) {
      case CherryCardType.main:
        return mainCardDecorationColor;
      case CherryCardType.secondary:
        return secondaryCardDecorationColor;
    }
  }

  @override
  CherryCardTheme copyWith({
    Color? mainCardBackgroundColor,
    Color? mainCardDecorationColor,
    Color? secondaryCardBackgroundColor,
    Color? secondaryCardDecorationColor,
    double? borderRadius,
  }) {
    return CherryCardTheme(
      mainCardBackgroundColor:
          mainCardBackgroundColor ?? this.mainCardBackgroundColor,
      mainCardDecorationColor:
          mainCardDecorationColor ?? this.mainCardDecorationColor,
      secondaryCardBackgroundColor:
          secondaryCardBackgroundColor ?? this.secondaryCardBackgroundColor,
      secondaryCardDecorationColor:
          secondaryCardDecorationColor ?? this.secondaryCardDecorationColor,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  ThemeExtension<CherryCardTheme> lerp(
    covariant ThemeExtension<CherryCardTheme>? other,
    double t,
  ) {
    if (other is! CherryCardTheme) {
      return this;
    }
    return CherryCardTheme(
      mainCardBackgroundColor: Color.lerp(
        mainCardBackgroundColor,
        other.mainCardBackgroundColor,
        t,
      )!,
      mainCardDecorationColor: Color.lerp(
        mainCardDecorationColor,
        other.mainCardDecorationColor,
        t,
      )!,
      secondaryCardBackgroundColor: Color.lerp(
        secondaryCardBackgroundColor,
        other.secondaryCardBackgroundColor,
        t,
      )!,
      secondaryCardDecorationColor: Color.lerp(
        secondaryCardDecorationColor,
        other.secondaryCardDecorationColor,
        t,
      )!,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
    );
  }
}
