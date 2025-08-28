import 'package:cherry_ui/src/extensions/color.dart';
import 'package:flutter/material.dart';

/// {@template cherry_card_decoration}
/// A widget that provides a card-like decoration.
/// {@endtemplate}
class CherryCardDecoration extends StatelessWidget {
  /// {@macro cherry_card_decoration}
  const CherryCardDecoration({
    required this.backgroundColor,
    required this.decorationColor,
    required this.child,
    required this.borderRadius,
    this.width = double.infinity,
    this.height = double.infinity,
    super.key,
  });

  /// The background color of the card.
  final Color backgroundColor;

  /// The color of the card's decoration border.
  final Color decorationColor;

  /// The width of the card.
  final double width;

  /// The height of the card.
  final double height;

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
            color: backgroundColor.darken(.4),
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              borderRadius - borderRadius / 4,
            ),
            border: Border.all(
              color: decorationColor,
              width: 4,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  borderRadius - borderRadius / 2.5,
                ),
                border: Border.all(
                  color: decorationColor.darken(0.4),
                  width: 4,
                ),
              ),
              child: SizedBox(
                width: width,
                height: height,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
