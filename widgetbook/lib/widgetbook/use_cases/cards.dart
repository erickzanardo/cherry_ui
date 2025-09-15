import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CherryCard',
  type: CherryCard,
)
Widget cherryCard(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,
        children: [
          for (final type in CherryCardType.values)
            CherryCard(
              width: 250,
              height: 150,
              type: type,
              child: Center(child: Text(type.name.toUpperCase())),
            ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'CherryElevatedCard',
  type: CherryElevatedCard,
)
Widget cherryElevatedCard(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,
        children: [
          CherryElevatedCard(
            width: 250,
            height: 150,
            child: Center(child: Text('An Elevated Card')),
          ),
        ],
      ),
    ),
  );
}
