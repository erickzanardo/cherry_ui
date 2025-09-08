import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_ribbon}
/// A widget that represents a card.
/// {@endtemplate}
class CherryRibbon extends StatelessWidget {
  /// {@macro cherry_ribbon}
  const CherryRibbon({
    required this.child,
    this.width = double.infinity,
    this.type = CherryRibbonType.main,
    super.key,
  });

  /// Child widget to be displayed inside the card.
  final Widget child;

  /// Width of the card.
  final double width;

  /// The type of the card.
  final CherryRibbonType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardTheme = theme.cherryExtension<CherryRibbonTheme>();

    final backgroundColor = cardTheme.backgroundColorForType(type);
    final decorationColor = cardTheme.decorationColorForType(type);

    return CherryRibbonDecoration(
      backgroundColor: backgroundColor,
      decorationColor: decorationColor,
      width: width,
      child: child,
    );
  }
}
