// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherryElevatedCardDecoration', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: CherryElevatedCardDecoration(
                backgroundColor: Colors.blue,
                elevation: 4,
                borderRadius: 32,
                child: Text('Hello'),
              ),
            ),
          ),
        ),
      );
      expect(
        find.byType(CherryElevatedCardDecoration),
        findsOneWidget,
      );
      expect(find.text('Hello'), findsOneWidget);
    });
  });
}
