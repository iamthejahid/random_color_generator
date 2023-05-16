import 'dart:ui';

/// The `RandomColorDomain` abstract class serves as a domain
///
/// for generating random color.

abstract class RandomColorGeneratorDomain {
  /// Generates a random color based on the provided possibilityMaker.
  ///
  /// The `possibilityMaker` parameter is used to ensure that
  ///
  /// the same color is not returned multiple times within a short period.
  ///
  /// Returns a `Color` object representing the generated random color.
  ///
  Color randomColorGenerator({required int possibilityMaker});
}
