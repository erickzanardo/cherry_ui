// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherryRibbon', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherryRibbon(
                child: Text('Hello'),
              ),
            ),
          ),
        ),
      );
      expect(
        find.byType(CherryRibbon),
        findsOneWidget,
      );
      expect(find.text('Hello'), findsOneWidget);
    });
  });
}
