import 'dart:collection';

import 'package:accessibility_tools/accessibility_tools.dart';
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
  //MaterialThemeAddon(
  //  themes: [
  //    WidgetbookTheme(
  //      name: 'GameTheme',
  //      data: const GameTheme().themeData,
  //    ),
  //  ],
  //),
  ViewportAddon([
    IosViewports.iPhone13,
    AndroidViewports.samsungGalaxyNote20,
    MacosViewports.macbookPro,
    WindowsViewports.desktop,
    LinuxViewports.desktop,
  ]),
  TextScaleAddon(divisions: 3, initialScale: 1),
]);
