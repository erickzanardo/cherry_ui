// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherryElevatedCard', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherryElevatedCard(
                child: Text('Hello'),
              ),
            ),
          ),
        ),
      );
      expect(
        find.byType(CherryElevatedCard),
        findsOneWidget,
      );
      expect(find.text('Hello'), findsOneWidget);
    });
  });
}
