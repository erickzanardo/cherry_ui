import 'package:cherry_ui/src/extensions/color.dart';
import 'package:flutter/material.dart';

/// {@template cherry_elevated_card_decoration}
/// A widget that provides a card-like decoration.
/// {@endtemplate}
class CherryElevatedCardDecoration extends StatelessWidget {
  /// {@macro cherry_elevated_card_decoration}
  const CherryElevatedCardDecoration({
    required this.backgroundColor,
    required this.child,
    required this.borderRadius,
    required this.elevation,
    this.width = double.infinity,
    this.height = double.infinity,
    super.key,
  });

  /// The background color of the card.
  final Color backgroundColor;

  /// The width of the card.
  final double width;

  /// The height of the card.
  final double height;

  /// The elevation of the card.
  final double elevation;

  /// The border radius of the card.
  final double borderRadius;

  /// The child widget to be displayed inside the card.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: backgroundColor.darken(.1),
            offset: Offset(0, elevation),
          ),
        ],
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
