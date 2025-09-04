import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_theme_builder/widgetbook/theme_notifier.dart';

class WidgetbookThemeBuilder extends StatelessWidget {
  const WidgetbookThemeBuilder({
    required this.builder,
    required this.themeUpdater,
    super.key,
  });

  final CherryUITheme Function(BuildContext context, CherryUITheme theme)
  themeUpdater;
  final Widget Function(BuildContext context, CherryUITheme theme) builder;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeNotifier.value = themeUpdater(context, themeNotifier.value);
    });

    return Stack(
      children: [
        Positioned.fill(
          child: ValueListenableBuilder<CherryUITheme>(
            valueListenable: themeNotifier,
            builder: (context, theme, child) {
              return Theme(
                data: theme.themeData,
                child: Builder(
                  builder: (context) {
                    return builder(context, theme);
                  },
                ),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                //
              },
              child: const Text('Get theme code!'),
            ),
          ),
        ),
      ],
    );
  }
}
