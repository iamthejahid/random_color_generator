import 'package:flutter/material.dart';
import 'package:random_color_generator/core/font_size.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The Multi Color Showing Page.
class MultiColorShowCasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    // Calculation for the number of rows and columns
    final double height = (screenSize.height / 3) - 4;
    final double width = (screenSize.width / 3) - 4;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          // Vertical spacing between lines
          children: List.generate(GRIDS_AMOUNT, (index) {
            return Container(
              margin: const EdgeInsets.all(2),
              width: width,
              height: height,
              color: Colors.blue, // Replace with desired box color
            );
          }),
        ),
      ),
    );
  }
}
