import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/application/multi_color_show_notifier/multi_color_show_notifier_state.dart';
import 'package:random_color_generator/core/values.dart';
import 'package:random_color_generator/domain/random_color_generator_domain.dart';

/// The [MultiColorShowNotifier] class is a state notifier
/// responsible for managing
/// the state of the color show feature.
///
/// It extends the `StateNotifier` class from the `hooks_riverpod` package.
class MultiColorShowNotifier
    extends StateNotifier<MultiColorShowNotifierState> {
  /// The domain instance for generating random colors.
  final RandomColorGeneratorDomain randomColorGeneratorDomain;

  /// Making instance of [Random] for using [random] to generate random number.
  Random random = Random();

  /// Creates an instance of [MultiColorShowNotifier].
  ///
  /// The `randomColorGeneratorDomain` parameter is required and represents
  /// the domain instance for generating random colors.
  ///
  /// The initial state is set to the value
  /// returned by `MultiColorShowNotifierState.init()`.
  MultiColorShowNotifier({required this.randomColorGeneratorDomain})
      : super(MultiColorShowNotifierState.init());

  /// Changes the colors by generating random colors
  /// using the `randomColorGeneratorDomain`.
  void colorChange() {
    final List<Color> randomColors = List.generate(
      GRIDS_AMOUNT,
      (index) => randomColorGeneratorDomain.randomColorGenerator(
        possibilityMaker: random.nextInt(index == 0 ? 10 : index),
      ),
    );

    state = state.copyWith(
      colors: List<Color>.from(randomColors),
    );
  }
}
