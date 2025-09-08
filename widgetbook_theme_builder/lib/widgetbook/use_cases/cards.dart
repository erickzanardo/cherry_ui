import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_theme_builder/widgets/theme_builder.dart';

@widgetbook.UseCase(
  name: 'CherryCard',
  type: CherryCard,
)
Widget buttons(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      cardTheme: theme.cardTheme.copyWith(
        mainCardBackgroundColor: context.knobs.color(
          label: 'Main Card Background Color',
          initialValue: theme.cardTheme.mainCardBackgroundColor,
        ),
        mainCardDecorationColor: context.knobs.color(
          label: 'Main Card Decoration Color',
          initialValue: theme.cardTheme.mainCardDecorationColor,
        ),
        secondaryCardBackgroundColor: context.knobs.color(
          label: 'Secondary Card Background Color',
          initialValue: theme.cardTheme.secondaryCardBackgroundColor,
        ),
        secondaryCardDecorationColor: context.knobs.color(
          label: 'Secondary Card Decoration Color',
          initialValue: theme.cardTheme.secondaryCardDecorationColor,
        ),
        borderRadius: context.knobs.double.input(
          label: 'Card Border Radius',
          initialValue: theme.cardTheme.borderRadius,
        ),
      ),
    ),
    builder: (context, theme) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              for (final type in CherryCardType.values)
                CherryCard(
                  width: 250,
                  height: 150,
                  type: type,
                  child: Center(child: Text(type.name.toUpperCase())),
                ),
            ],
          ),
        ),
      );
    },
  );
}
