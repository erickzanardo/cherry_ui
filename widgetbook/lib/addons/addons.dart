import 'dart:collection';

import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:cherry_ui/cherry_ui.dart';
import 'package:widgetbook/widgetbook.dart';

final addons = UnmodifiableListView<WidgetbookAddon>([
  AlignmentAddon(),
  BuilderAddon(
    name: 'Accessibility',
    builder: (context, child) => AccessibilityTools(
      testingToolsConfiguration: TestingToolsConfiguration(
        enabled: context.knobs.boolean(label: 'Enable Accessibility Check'),
      ),
      child: child,
    ),
  ),
  ViewportAddon([
    IosViewports.iPhone13,
    AndroidViewports.samsungGalaxyNote20,
    MacosViewports.macbookPro,
    WindowsViewports.desktop,
    LinuxViewports.desktop,
  ]),
  MaterialThemeAddon(
    themes: [
      WidgetbookTheme(
        name: 'GameTheme',
        data: const CherryUITheme().themeData,
      ),
    ],
  ),
  TextScaleAddon(divisions: 3, initialScale: 1),
]);
