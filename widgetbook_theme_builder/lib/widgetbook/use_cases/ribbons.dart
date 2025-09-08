import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_theme_builder/widgets/theme_builder.dart';

@widgetbook.UseCase(
  name: 'CherryRibbon',
  type: CherryRibbon,
)
Widget buttons(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      ribbonTheme: theme.ribbonTheme.copyWith(
        mainRibbonBackgroundColor: context.knobs.color(
          label: 'Main Ribbon Background Color',
          initialValue: theme.ribbonTheme.mainRibbonBackgroundColor,
        ),
        mainRibbonDecorationColor: context.knobs.color(
          label: 'Main Ribbon Decoration Color',
          initialValue: theme.ribbonTheme.mainRibbonDecorationColor,
        ),
        secondaryRibbonBackgroundColor: context.knobs.color(
          label: 'Secondary Ribbon Background Color',
          initialValue: theme.ribbonTheme.secondaryRibbonBackgroundColor,
        ),
        secondaryRibbonDecorationColor: context.knobs.color(
          label: 'Secondary Ribbon Decoration Color',
          initialValue: theme.ribbonTheme.secondaryRibbonDecorationColor,
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
              for (final type in CherryRibbonType.values)
                CherryRibbon(
                  type: type,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        type.name.toUpperCase(),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    },
  );
}
