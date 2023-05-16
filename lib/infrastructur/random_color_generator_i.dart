import 'dart:math';
import 'dart:ui';
import 'package:random_color_generator/domain/random_color_generator_dom.dart';

/// The `RandomColorDomain` class is a concrete implementation of the
///
/// [RandomColorGeneratorDomain]  abstract class.
///
/// It generates random colors based on a provided possibilityMaker value.
///
class RandomColorGeneratorI extends RandomColorGeneratorDomain {
  /// Generates a random color based on the provided possibility maker value.
  ///
  /// The `possibilityMaker` parameter is used as a seed to ensure that
  ///
  ///  the same color is not returned multiple times within a short period.
  ///
  /// Returns a [Color] object representing the generated random color.
  @override
  Color randomColorGenerator({required int possibilityMaker}) {
    final Random random = Random(possibilityMaker);
    final int color = random.nextInt(0xFFFFFF);
    final String hexColor = color.toRadixString(16).padLeft(6, '0');
    return Color(int.parse('0xFF$hexColor'));
  }
}
