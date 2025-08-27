import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Types of Cherry Buttons.
enum CherryButtonType {
  /// Affirmative button type (e.g. Ok, Confirm).
  affirmative,

  /// Negative button type (e.g. Close, Delete).
  negative,

  /// Informative button type (e.g. Info, Details).
  informative,

  /// Neutral button type (e.g. Maybe, Later).
  neutral,
}

/// {@template cherry_base_button_theme}
/// A base theme for the Cherry Button design system.
/// {@endtemplate}
class CherryBaseButtonTheme extends ThemeExtension<CherryBaseButtonTheme> {
  /// {@macro cherry_button_theme}
  const CherryBaseButtonTheme({
    required this.affirmativeColor,
    required this.negativeColor,
    required this.informativeColor,
    required this.neutralColor,
    required this.pressedScale,
    required this.animationDuration,
  });

  /// Color for buttons with affirmative actions (e.g., "Yes", "Submit").
  final Color affirmativeColor;

  /// Color for buttons with negative actions (e.g., "No", "Cancel").
  final Color negativeColor;

  /// Color for buttons with informative actions (e.g., "Info", "Details").
  final Color informativeColor;

  /// Color for buttons with neutral actions (e.g., "Maybe", "Later").
  final Color neutralColor;

  /// Scale factor when the button is pressed
  final double pressedScale;

  /// Duration of the press animation
  final Duration animationDuration;

  /// Gets the color associated with the given [CherryButtonType].
  Color colorForType(CherryButtonType type) {
    switch (type) {
      case CherryButtonType.affirmative:
        return affirmativeColor;
      case CherryButtonType.negative:
        return negativeColor;
      case CherryButtonType.informative:
        return informativeColor;
      case CherryButtonType.neutral:
        return neutralColor;
    }
  }

  @override
  ThemeExtension<CherryBaseButtonTheme> copyWith({
    Color? affirmativeColor,
    Color? negativeColor,
    Color? informativeColor,
    Color? neutralColor,
    double? pressedScale,
    Duration? animationDuration,
  }) {
    return CherryBaseButtonTheme(
      affirmativeColor: affirmativeColor ?? this.affirmativeColor,
      negativeColor: negativeColor ?? this.negativeColor,
      informativeColor: informativeColor ?? this.informativeColor,
      neutralColor: neutralColor ?? this.neutralColor,
      pressedScale: pressedScale ?? this.pressedScale,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }

  @override
  ThemeExtension<CherryBaseButtonTheme> lerp(
    covariant ThemeExtension<CherryBaseButtonTheme>? other,
    double t,
  ) {
    if (other is! CherryBaseButtonTheme) {
      return this;
    }
    return CherryBaseButtonTheme(
      affirmativeColor: Color.lerp(
        affirmativeColor,
        other.affirmativeColor,
        t,
      )!,
      negativeColor: Color.lerp(
        negativeColor,
        other.negativeColor,
        t,
      )!,
      informativeColor: Color.lerp(
        informativeColor,
        other.informativeColor,
        t,
      )!,
      neutralColor: Color.lerp(
        neutralColor,
        other.neutralColor,
        t,
      )!,
      pressedScale: lerpDouble(
        pressedScale,
        other.pressedScale,
        t,
      )!,
      animationDuration: lerpDuration(
        animationDuration,
        other.animationDuration,
        t,
      ),
    );
  }
}

/// {@template cherry_button_theme}
/// A theme for the Cherry Button design system.
/// {@endtemplate}
class CherryButtonTheme extends ThemeExtension<CherryButtonTheme> {
  /// {@macro cherry_button_theme}
  const CherryButtonTheme({
    required this.padding,
    required this.borderRadius,
    required this.borderSize,
    required this.blurRadius,
  });

  /// Padding inside the button
  final double padding;

  /// Border radius of the button
  final double borderRadius;

  /// Border size of the button
  final double borderSize;

  /// Blur radius of the button shadow
  final double blurRadius;

  @override
  ThemeExtension<CherryButtonTheme> copyWith({
    double? padding,
    double? borderRadius,
    double? borderSize,
    double? blurRadius,
  }) {
    return CherryButtonTheme(
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      borderSize: borderSize ?? this.borderSize,
      blurRadius: blurRadius ?? this.blurRadius,
    );
  }

  @override
  ThemeExtension<CherryButtonTheme> lerp(
    covariant ThemeExtension<CherryButtonTheme>? other,
    double t,
  ) {
    if (other is! CherryButtonTheme) {
      return this;
    }
    return CherryButtonTheme(
      padding: lerpDouble(
        padding,
        other.padding,
        t,
      )!,
      borderRadius: lerpDouble(
        borderRadius,
        other.borderRadius,
        t,
      )!,
      borderSize: lerpDouble(
        borderSize,
        other.borderSize,
        t,
      )!,
      blurRadius: lerpDouble(
        blurRadius,
        other.blurRadius,
        t,
      )!,
    );
  }
}

/// {@template cherry_circle_button_theme}
/// A theme for the Cherry Circle Button design system.
/// {@endtemplate}
class CherryCircleButtonTheme extends ThemeExtension<CherryCircleButtonTheme> {
  /// {@macro cherry_circle_button_theme}
  const CherryCircleButtonTheme({
    required this.size,
  });

  /// Size of the circle button
  final double size;

  @override
  ThemeExtension<CherryCircleButtonTheme> copyWith({
    double? size,
    double? pressedScale,
    Duration? animationDuration,
  }) {
    return CherryCircleButtonTheme(
      size: size ?? this.size,
    );
  }

  @override
  ThemeExtension<CherryCircleButtonTheme> lerp(
    covariant ThemeExtension<CherryCircleButtonTheme>? other,
    double t,
  ) {
    if (other is! CherryCircleButtonTheme) {
      return this;
    }
    return CherryCircleButtonTheme(
      size: lerpDouble(
        size,
        other.size,
        t,
      )!,
    );
  }
}
