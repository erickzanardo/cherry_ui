// Ignore for test
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherrySwitch', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherrySwitch(),
            ),
          ),
        ),
      );

      expect(
        find.byType(CherrySwitch),
        findsOneWidget,
      );
    });

    testWidgets('calls onChanged', (tester) async {
      var value = false;
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherrySwitch(
                value: value,
                onChanged: (newValue) {
                  value = newValue;
                },
              ),
            ),
          ),
        ),
      );

      expect(
        find.byType(CherrySwitch),
        findsOneWidget,
      );

      await tester.tap(find.byType(CherrySwitch));
      await tester.pumpAndSettle();
      expect(value, isTrue);
    });
  });
}
