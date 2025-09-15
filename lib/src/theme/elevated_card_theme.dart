import 'dart:ui';

import 'package:flutter/material.dart';

/// {@template cherry_elevated_theme}
/// A theme extension for customizing the appearance of Cherry UI
/// elevated cards.
/// {@endtemplate}
class CherryElevatedCardTheme extends ThemeExtension<CherryElevatedCardTheme> {
  /// {@macro cherry_elevated_theme}
  const CherryElevatedCardTheme({
    required this.cardBackgroundColor,
    required this.borderRadius,
    required this.elevation,
  });

  /// Color for the main background of the card.
  final Color cardBackgroundColor;

  /// The border radius of the card.
  final double borderRadius;

  /// The elevation of the card.
  final double elevation;

  @override
  CherryElevatedCardTheme copyWith({
    Color? cardBackgroundColor,
    double? borderRadius,
    double? elevation,
  }) {
    return CherryElevatedCardTheme(
      cardBackgroundColor: cardBackgroundColor ?? this.cardBackgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      elevation: elevation ?? this.elevation,
    );
  }

  @override
  ThemeExtension<CherryElevatedCardTheme> lerp(
    covariant ThemeExtension<CherryElevatedCardTheme>? other,
    double t,
  ) {
    if (other is! CherryElevatedCardTheme) {
      return this;
    }
    return CherryElevatedCardTheme(
      cardBackgroundColor: Color.lerp(
        cardBackgroundColor,
        other.cardBackgroundColor,
        t,
      )!,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
      elevation: lerpDouble(elevation, other.elevation, t)!,
    );
  }
}
