// Ignore for test
// ignore_for_file: prefer_const_constructors

import 'package:cherry_ui/cherry_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CherryCircleButton', () {
    testWidgets('renders', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherryCircleButton(
                child: Text('+'),
              ),
            ),
          ),
        ),
      );

      expect(
        find.byType(CherryCircleButton),
        findsOneWidget,
      );
      expect(find.text('+'), findsOneWidget);
    });

    testWidgets('responds to tap', (tester) async {
      var tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherryCircleButton(
                child: Text('+'),
                onPress: () {
                  tapped = true;
                },
              ),
            ),
          ),
        ),
      );

      expect(tapped, isFalse);
      await tester.tap(find.byType(CherryCircleButton));
      expect(tapped, isTrue);
    });

    testWidgets('responds to tap down and up', (tester) async {
      var tapDown = false;
      var tapUp = false;
      await tester.pumpWidget(
        MaterialApp(
          theme: CherryUITheme().themeData,
          home: Scaffold(
            body: Center(
              child: CherryCircleButton(
                child: Text('+'),
                onPressDown: () {
                  tapDown = true;
                },
                onPressUp: () {
                  tapUp = true;
                },
              ),
            ),
          ),
        ),
      );

      expect(tapDown, isFalse);
      expect(tapUp, isFalse);
      await tester.tap(find.byType(CherryCircleButton));
      expect(tapDown, isTrue);
      expect(tapUp, isTrue);
    });
  });
}
