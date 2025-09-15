import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_elevated_card}
/// A widget that represents a card.
/// {@endtemplate}
class CherryElevatedCard extends StatelessWidget {
  /// {@macro cherry_elevated_card}
  const CherryElevatedCard({
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
    super.key,
  });

  /// Child widget to be displayed inside the card.
  final Widget child;

  /// Width of the card.
  final double width;

  /// Height of the card.
  final double height;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardTheme = theme.cherryExtension<CherryElevatedCardTheme>();

    final backgroundColor = cardTheme.cardBackgroundColor;
    final elevation = cardTheme.elevation;

    return CherryElevatedCardDecoration(
      backgroundColor: backgroundColor,
      borderRadius: cardTheme.borderRadius,
      elevation: elevation,
      width: width,
      height: height,
      child: child,
    );
  }
}
