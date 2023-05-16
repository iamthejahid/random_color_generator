import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// The `ColorShowNotifierState` class represents
///
/// the state of the `ColorShowNotifier`.
///
/// It contains information about the background color and button color.
class ColorShowNotifierState extends Equatable {
  /// The background color.
  final Color bgColor;

  /// The button color.
  final Color buttonColor;
  @override
  List<Object> get props => [bgColor, buttonColor];

  /// Creates an instance of [ColorShowNotifierState].
  ///
  /// The [bgColor] and [buttonColor] parameters are required and represent
  /// the initial background and button colors respectively.
  const ColorShowNotifierState({
    required this.bgColor,
    required this.buttonColor,
  });

  /// Creates an instance of `ColorShowNotifierState` with initial values.
  ///
  /// This factory method is used to create an initial state of the notifier.
  ///
  /// Returns an instance of `ColorShowNotifierState`
  /// with predefined initial values.
  factory ColorShowNotifierState.init() => ColorShowNotifierState(
        bgColor: Colors.green.shade600,
        buttonColor: Colors.pinkAccent.shade200,
      );

  /// Creates a copy of the current state with optional updated values.
  ///
  /// If `bgColor` or `buttonColor` is provided, it will replace the
  /// respective values in the copied state. If not provided, the original
  /// value will be used.
  ///
  /// Returns  new instance of `ColorShowNotifierState` with the updated values.
  ColorShowNotifierState copyWith({
    Color? bgColor,
    Color? buttonColor,
  }) {
    return ColorShowNotifierState(
      bgColor: bgColor ?? this.bgColor,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }
}
