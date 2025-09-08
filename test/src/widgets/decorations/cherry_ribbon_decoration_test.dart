// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherryRibbonDecoration', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: CherryRibbonDecoration(
                backgroundColor: Colors.blue,
                decorationColor: Colors.yellow,
                child: Text('Hello'),
              ),
            ),
          ),
        ),
      );
      expect(
        find.byType(CherryRibbonDecoration),
        findsOneWidget,
      );
      expect(find.text('Hello'), findsOneWidget);
    });
  });
}
