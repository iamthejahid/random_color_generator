import 'dart:math';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/application/color_show_notifier/color_show_notifier_state.dart';
import 'package:random_color_generator/core/values.dart';
import 'package:random_color_generator/domain/random_color_generator_domain.dart';

/// The `ColorShowNotifier` class is a state notifier responsible for managing
/// the state of the color show feature.
///
/// It extends the `StateNotifier` class from the `hooks_riverpod` package.
class ColorShowNotifier extends StateNotifier<ColorShowNotifierState> {
  /// The domain instance for generating random colors.
  final RandomColorGeneratorDomain randomColorGeneratorDomain;

  /// Making instance of [Random] for using [random] to generate random number.
  Random random = Random();

  /// Creates an instance of `ColorShowNotifier`.
  ///
  /// The `randomColorGeneratorDomain` parameter is required and represents
  /// the domain instance for generating random colors.
  ///
  /// The initial state is set to the value
  /// returned by `ColorShowNotifierState.init()`.
  ColorShowNotifier({required this.randomColorGeneratorDomain})
      : super(ColorShowNotifierState.init());

  /// Changes the colors by generating random colors
  /// using the `randomColorGeneratorDomain`.
  ///
  /// This method updates the `buttonColor` and `bgColor`
  /// properties of the state
  /// by calling the `randomColorGenerator` method of
  /// the `randomColorGeneratorDomain`
  /// with the specified `possibilityMaker` values.
  void colorChange() {
    /// Updates the state of the notifier.
    state = state.copyWith(
      buttonColor: randomColorGeneratorDomain.randomColorGenerator(
        possibilityMaker: random.nextInt(POSSIBILITY_MAKER_NUMBER_FOR_BG),
      ),
      bgColor: randomColorGeneratorDomain.randomColorGenerator(
        possibilityMaker: random.nextInt(POSSIBILITY_MAKER_NUMBER_FOR_BUTTON),
      ),
    );
  }
}
