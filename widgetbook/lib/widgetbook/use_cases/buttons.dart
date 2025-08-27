import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CherryButton',
  type: CherryButton,
)
Widget buttons(BuildContext context) {
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
}

@widgetbook.UseCase(
  name: 'CherryCircleButton',
  type: CherryCircleButton,
)
Widget circleButtons(BuildContext context) {
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
}
