import 'package:cherry_ui/src/extensions/color.dart';
import 'package:flutter/material.dart';

/// {@template cherry_ribbon_decoration}
/// A widget that provides a ribbon-like decoration.
/// {@endtemplate}
class CherryRibbonDecoration extends StatelessWidget {
  /// {@macro cherry_ribbon_decoration}
  const CherryRibbonDecoration({
    required this.backgroundColor,
    required this.decorationColor,
    required this.child,
    this.width = double.infinity,
    super.key,
  });

  /// The background color of the card.
  final Color backgroundColor;

  /// The color of the card's decoration border.
  final Color decorationColor;

  /// The width of the card.
  final double width;

  /// The child widget to be displayed inside the card.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: backgroundColor.darken(.4),
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: decorationColor,
                width: 4,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: decorationColor.darken(0.4),
                    width: 4,
                  ),
                ),
              ),
              child: SizedBox(
                width: width,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
