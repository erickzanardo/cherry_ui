import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_theme_builder/widgets/theme_builder.dart';

@widgetbook.UseCase(
  name: 'CherrySwitch',
  type: CherrySwitch,
)
Widget switches(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      switchTheme: theme.switchTheme.copyWith(
        size: Size(
          context.knobs.double.input(
            label: 'Width',
            initialValue: theme.switchTheme.size.width,
          ),
          context.knobs.double.input(
            label: 'Height',
            initialValue: theme.switchTheme.size.height,
          ),
        ),
        selectedColor: context.knobs.color(
          label: 'Selected Color',
          initialValue: theme.switchTheme.selectedColor,
        ),
        unselectedColor: context.knobs.color(
          label: 'Unselected Color',
          initialValue: theme.switchTheme.unselectedColor,
        ),
        thumbSelectedColor: context.knobs.color(
          label: 'Thumb Selected Color',
          initialValue: theme.switchTheme.thumbSelectedColor,
        ),
        thumbUnselectedColor: context.knobs.color(
          label: 'Thumb Unselected Color',
          initialValue: theme.switchTheme.thumbUnselectedColor,
        ),
        animationDuration: context.knobs.duration(
          label: 'Animation Duration',
          initialValue: theme.switchTheme.animationDuration,
        ),
      ),
    ),
    builder: (context, theme) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              CherrySwitch(),
              CherrySwitch(value: true),
            ],
          ),
        ),
      );
    },
  );
}
