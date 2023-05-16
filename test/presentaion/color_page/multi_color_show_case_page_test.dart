import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/core/dependency_injector_contain.dart'
    as _di;
import 'package:random_color_generator/core/font_size.dart';
import 'package:random_color_generator/presentation/color_page/multi_color_show_case_page.dart';

void main() async {
  await _di.init();

  testWidgets('MultiColorShowCasePage renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: MultiColorShowCasePage(),
        ),
      ),
    );

    // Verify that the page renders correctly
    expect(find.byType(Container), findsNWidgets(GRIDS_AMOUNT + 1));
  });
}
