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

@widgetbook.UseCase(
  name: 'CherryCardDecoration',
  type: CherryCardDecoration,
)
Widget cardDecoration(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CherryCardDecoration(
        width: 350,
        height: 350,
        backgroundColor: Colors.purple,
        decorationColor: Colors.yellow,
        borderRadius: 32,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              'This is a card decoration',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ),
  );
}
