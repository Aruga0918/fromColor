// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:from_color/main.dart';

void main() {
  testWidgets('moving to correct item add dialog test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
        ProviderScope(
            child: MyApp()
        ));

    // // Verify that all screen are displayed.
    // expect(find.text('Login'), findsOneWidget);
    // expect(find.text('Logout'), findsNothing);
    // expect(find.text('Palette'), findsOneWidget);
    // expect(find.text('Closet'), findsOneWidget);

    // move to 'closet screen'
    await tester.tap(find.byIcon(Icons.checkroom_rounded));
    await tester.pumpAndSettle();

    // Tap the 'add item' in 'outer Line' and trigger a frame.
    await tester.tap(find.byKey(Key("アウター")));
    await tester.pumpAndSettle();
    // Verify that our counter has incremented.
    expect(find.byKey(Key("Outer Add")), findsOneWidget);
    // back to pre screen
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // Tap the 'add item' in 'outer Line' and trigger a frame.
    await tester.tap(find.byKey(Key("トップス")));
    await tester.pumpAndSettle();
    // Verify that our counter has incremented.
    expect(find.byKey(Key("Tops Add")), findsOneWidget);
    // back to pre screen
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // Tap the 'add item' in 'outer Line' and trigger a frame.
    await tester.tap(find.byKey(Key("ボトムス")));
    await tester.pumpAndSettle();
    // Verify that our counter has incremented.
    expect(find.byKey(Key("Bottoms Add")), findsOneWidget);
    // back to pre screen
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // Tap the 'add item' in 'outer Line' and trigger a frame.
    await tester.tap(find.byKey(Key("靴")));
    await tester.pumpAndSettle();
    // Verify that our counter has incremented.
    expect(find.byKey(Key("Shoes Add")), findsOneWidget);
    // back to pre screen
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
  });
}
