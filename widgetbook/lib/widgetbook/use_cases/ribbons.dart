import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CherryRibbon',
  type: CherryRibbon,
)
Widget buttons(BuildContext context) {
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
                padding: const EdgeInsets.all(16),
                child: Text(
                  type.name.toUpperCase(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    ),
  );
}
