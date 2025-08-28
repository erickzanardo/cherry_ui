import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_card}
/// A widget that represents a card.
/// {@endtemplate}
class CherryCard extends StatelessWidget {
  /// {@macro cherry_card}
  const CherryCard({
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
    this.type = CherryCardType.main,
    super.key,
  });

  /// Child widget to be displayed inside the card.
  final Widget child;

  /// Width of the card.
  final double width;

  /// Height of the card.
  final double height;

  /// The type of the card.
  final CherryCardType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardTheme = theme.cherryExtension<CherryCardTheme>();

    final backgroundColor = cardTheme.backgroundColorForType(type);
    final decorationColor = cardTheme.decorationColorForType(type);

    return CherryCardDecoration(
      backgroundColor: backgroundColor,
      decorationColor: decorationColor,
      borderRadius: cardTheme.borderRadius,
      width: width,
      height: height,
      child: child,
    );
  }
}
