import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_theme_builder/widgets/theme_builder.dart';

@widgetbook.UseCase(
  name: 'CherryElevatedCard',
  type: CherryElevatedCard,
)
Widget buttons(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      elevatedCardTheme: theme.elevatedCardTheme.copyWith(
        cardBackgroundColor: context.knobs.color(
          label: 'Background Color',
          initialValue: theme.elevatedCardTheme.cardBackgroundColor,
        ),
        borderRadius: context.knobs.double.input(
          label: 'Border Radius',
          initialValue: theme.elevatedCardTheme.borderRadius,
        ),
        elevation: context.knobs.double.input(
          label: 'Elevation',
          initialValue: theme.elevatedCardTheme.elevation,
        )
      ),
    ),
    builder: (context, theme) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              CherryElevatedCard(
                width: 250,
                height: 150,
                child: Center(
                  child: Text('Elevated Card'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
