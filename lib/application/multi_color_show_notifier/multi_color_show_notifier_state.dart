import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// The `MultiColorShowNotifierState` class represents
///
/// the state of the `MultiColorShowNotifier`.
///
/// It contains information about multiple colors.
class MultiColorShowNotifierState extends Equatable {
  /// The list of colors.
  final List<Color> colors;

  @override
  List<Object> get props => [colors];

  /// Creates an instance of [MultiColorShowNotifierState].
  ///
  /// The [colors] parameter is required and represents
  /// the initial list of colors.
  const MultiColorShowNotifierState({
    required this.colors,
  });

  /// Creates an instance of `MultiColorShowNotifierState` with initial values.
  ///
  /// This factory method is used to create an initial state of the notifier.
  ///
  /// Returns an instance of `MultiColorShowNotifierState`
  /// with predefined initial values.
  factory MultiColorShowNotifierState.init() =>
      const MultiColorShowNotifierState(
        colors: [
          Color(0xFFFF0000), // Red
          Color(0xFF00FF00), // Lime
          Color(0xFF0000FF), // Blue
          Color(0xFFFFFF00), // Yellow
          Color(0xFF00FFFF), // Cyan
          Color(0xFFFF00FF), // Magenta
          Color(0xFFFFA500), // Orange
          Color(0xFF800080), // Purple
          Color(0xFF008000), // Green
        ],
      );

  /// Creates a copy of the current state with an optional updated value.
  ///
  /// If [colors] is provided, it will replace the colors in the copied state.
  /// If not provided, the original colors will be used.
  ///
  /// Returns a new instance of [MultiColorShowNotifierState]
  /// with the updated value.
  MultiColorShowNotifierState copyWith({
    List<Color>? colors,
  }) {
    return MultiColorShowNotifierState(
      colors: colors ?? this.colors,
    );
  }
}
