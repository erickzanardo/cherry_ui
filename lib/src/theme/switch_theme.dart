import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template cherry_switch_theme}
/// A theme extension for customizing the appearance of Cherry UI switches.
/// {@endtemplate}
class CherrySwitchTheme extends ThemeExtension<CherrySwitchTheme> {
  /// {@macro cherry_switch_theme}
  const CherrySwitchTheme({
    required this.size,
    required this.selectedColor,
    required this.unselectedColor,
    required this.thumbSelectedColor,
    required this.thumbUnselectedColor,
    required this.animationDuration,
    required this.borderSize,
  });

  /// The size of the switch.
  final Size size;

  /// The color of the switch when it is selected.
  final Color selectedColor;

  /// The color of the switch when it is not selected.
  final Color unselectedColor;

  /// The color of the thumb when the switch is selected.
  final Color thumbSelectedColor;

  /// The color of the thumb when the switch is not selected.
  final Color thumbUnselectedColor;

  /// The duration of the switch animation.
  final Duration animationDuration;

  /// The border size of the switch.
  final double borderSize;

  @override
  CherrySwitchTheme copyWith({
    Size? size,
    Color? selectedColor,
    Color? unselectedColor,
    Color? thumbSelectedColor,
    Color? thumbUnselectedColor,
    Duration? animationDuration,
    double? borderSize,
  }) {
    return CherrySwitchTheme(
      size: size ?? this.size,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
      thumbSelectedColor: thumbSelectedColor ?? this.thumbSelectedColor,
      thumbUnselectedColor: thumbUnselectedColor ?? this.thumbUnselectedColor,
      animationDuration: animationDuration ?? this.animationDuration,
      borderSize: borderSize ?? this.borderSize,
    );
  }

  @override
  ThemeExtension<CherrySwitchTheme> lerp(
    covariant ThemeExtension<CherrySwitchTheme>? other,
    double t,
  ) {
    if (other is! CherrySwitchTheme) {
      return this;
    }
    return CherrySwitchTheme(
      size: Size.lerp(size, other.size, t)!,
      selectedColor: Color.lerp(selectedColor, other.selectedColor, t)!,
      unselectedColor: Color.lerp(unselectedColor, other.unselectedColor, t)!,
      thumbSelectedColor: Color.lerp(
        thumbSelectedColor,
        other.thumbSelectedColor,
        t,
      )!,
      thumbUnselectedColor: Color.lerp(
        thumbUnselectedColor,
        other.thumbUnselectedColor,
        t,
      )!,
      animationDuration: lerpDuration(
        animationDuration,
        other.animationDuration,
        t,
      ),
      borderSize: borderSize + (other.borderSize - borderSize) * t,
    );
  }
}
