import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_theme_builder/widgets/theme_builder.dart';

@widgetbook.UseCase(
  name: 'CherryButton',
  type: CherryButton,
)
Widget buttons(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      baseButtonTheme: theme.baseButtonTheme.copyWith(
        affirmativeColor: context.knobs.color(
          label: 'Affirmative Color',
          initialValue: theme.baseButtonTheme.affirmativeColor,
        ),
        negativeColor: context.knobs.color(
          label: 'Negative Color',
          initialValue: theme.baseButtonTheme.negativeColor,
        ),
        informativeColor: context.knobs.color(
          label: 'Informative Color',
          initialValue: theme.baseButtonTheme.informativeColor,
        ),
        neutralColor: context.knobs.color(
          label: 'Neutral Color',
          initialValue: theme.baseButtonTheme.neutralColor,
        ),
        pressedScale: context.knobs.double.input(
          label: 'Pressed Scale',
          initialValue: theme.baseButtonTheme.pressedScale,
        ),
        animationDuration: context.knobs.duration(
          label: 'Animation Duration',
          initialValue: theme.baseButtonTheme.animationDuration,
        ),
      ),
      buttonTheme: theme.buttonTheme.copyWith(
        padding: context.knobs.double.input(
          label: 'Button Padding',
          initialValue: theme.buttonTheme.padding,
        ),
        borderRadius: context.knobs.double.input(
          label: 'Button Border Radius',
          initialValue: theme.buttonTheme.borderRadius,
        ),
        borderSize: context.knobs.double.input(
          label: 'Button Border Size',
          initialValue: theme.buttonTheme.borderSize,
        ),
        blurRadius: context.knobs.double.input(
          label: 'Button Blur Radius',
          initialValue: theme.buttonTheme.blurRadius,
        ),
      ),
    ),
    builder: (context, theme) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              for (final type in CherryButtonType.values)
                CherryButton(
                  type: type,
                  child: Text(type.name.toUpperCase()),
                ),
            ],
          ),
        ),
      );
    },
  );
}

@widgetbook.UseCase(
  name: 'CherryCircleButton',
  type: CherryCircleButton,
)
Widget circleButtons(BuildContext context) {
  return WidgetbookThemeBuilder(
    themeUpdater: (context, theme) => theme.copyWith(
      baseButtonTheme: theme.baseButtonTheme.copyWith(
        affirmativeColor: context.knobs.color(
          label: 'Affirmative Color',
          initialValue: theme.baseButtonTheme.affirmativeColor,
        ),
        negativeColor: context.knobs.color(
          label: 'Negative Color',
          initialValue: theme.baseButtonTheme.negativeColor,
        ),
        informativeColor: context.knobs.color(
          label: 'Informative Color',
          initialValue: theme.baseButtonTheme.informativeColor,
        ),
        neutralColor: context.knobs.color(
          label: 'Neutral Color',
          initialValue: theme.baseButtonTheme.neutralColor,
        ),
        pressedScale: context.knobs.double.input(
          label: 'Pressed Scale',
          initialValue: theme.baseButtonTheme.pressedScale,
        ),
        animationDuration: context.knobs.duration(
          label: 'Animation Duration',
          initialValue: theme.baseButtonTheme.animationDuration,
        ),
      ),
      circleButtonTheme: theme.circleButtonTheme.copyWith(
        size: context.knobs.double.input(
          label: 'Circle Button Size',
          initialValue: theme.circleButtonTheme.size,
        ),
      ),
    ),
    builder: (context, theme) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              for (final type in CherryButtonType.values)
                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CherryCircleButton(
                      type: type,
                      child: const Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(type.name.toUpperCase()),
                    ),
                  ],
                ),
            ],
          ),
        ),
      );
    },
  );
}
