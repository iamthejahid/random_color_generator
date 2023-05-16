import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/core/font_size.dart';
import 'package:random_color_generator/presentation/color_page/color_show_case_page.dart';
import 'package:random_color_generator/presentation/color_page/multi_color_show_case_page.dart';

void main() {
  testWidgets('ColorShowCasePage arrived', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ColorShowCasePage(),
      ),
    );

    // Verify that the page renders correctly
    expect(find.text('Hello there'), findsOneWidget);
    expect(find.text('view the multi color show case'), findsOneWidget);
  });

  testWidgets('Navigating to MultiColorShowCasePage',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ColorShowCasePage(),
      ),
    );

    // Tap the MaterialButton to navigate to MultiColorShowCasePage
    await tester.tap(find.byType(MaterialButton));
    await tester.pumpAndSettle();

    // Verify that MultiColorShowCasePage is displayed
    expect(find.byType(MultiColorShowCasePage), findsOneWidget);
  });

  testWidgets('MultiColorShowCasePage renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: MultiColorShowCasePage(),
      ),
    );

    // Verify that the page renders correctly
    expect(find.byType(Container), findsNWidgets(GRIDS_AMOUNT));
  });
}
