import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CherrySwitch',
  type: CherrySwitch,
)
Widget buttons(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          CherrySwitch(value: true),
          CherrySwitch(),
        ],
      ),
    ),
  );
}
