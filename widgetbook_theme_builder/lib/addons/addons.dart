import 'dart:collection';

import 'package:widgetbook/widgetbook.dart';

final addons = UnmodifiableListView<WidgetbookAddon>([
  AlignmentAddon(),
  ViewportAddon([
    IosViewports.iPhone13,
    AndroidViewports.samsungGalaxyNote20,
    MacosViewports.macbookPro,
    WindowsViewports.desktop,
    LinuxViewports.desktop,
  ]),
  TextScaleAddon(divisions: 3, initialScale: 1),
]);
