import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/core/values.dart';
import 'package:random_color_generator/infrastructur/random_color_generator_i.dart';

void main() {
  group('RandomColorGeneratorInfrastructure', () {
    late RandomColorGeneratorI randomColorGenerator;

    setUp(() {
      randomColorGenerator = RandomColorGeneratorI();
    });

    test('randomColorGenerator should generate a random color', () {
      final color1 =
          randomColorGenerator.randomColorGenerator(possibilityMaker: 2);
      final color2 =
          randomColorGenerator.randomColorGenerator(possibilityMaker: 1);

      expect(color1, isA<Color>());
      expect(color2, isA<Color>());
      expect(color1, isNot(equals(color2)));
    });

    test('randomColorGenerator should generate unique colors', () {
      final colors = <Color>{};

      for (int i = GRIDS_AMOUNT; i > 0; i--) {
        final color =
            randomColorGenerator.randomColorGenerator(possibilityMaker: i);
        colors.add(color);
      }

      expect(colors.length, equals(GRIDS_AMOUNT));
    });
  });
}
