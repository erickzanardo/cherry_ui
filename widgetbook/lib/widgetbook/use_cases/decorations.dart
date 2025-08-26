import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CherryDecoratedCircle',
  type: CherryDecoratedCircle,
)
Widget decorations(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Column(
            children: [
              CherryDecoratedCircle(
                color: Colors.blue,
                size: 100,
                child: Text('Hello'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
