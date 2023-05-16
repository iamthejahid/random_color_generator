import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/core/dependency_injector_contain.dart';
import 'package:random_color_generator/core/font_size.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The Multi Color Showing Page.
class MultiColorShowCasePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;

    // Calculation for the number of rows and columns
    final double height = (screenSize.height / 3) - 4;
    final double width = (screenSize.width / 3) - 4;

    final currentSate = ref.watch(multiColorStateNotifierProvider);
    final controller = ref.read(multiColorStateNotifierProvider.notifier);

    return Scaffold(
      body: GestureDetector(
        onTap: () => controller.colorChange(),
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            // Vertical spacing between lines
            children: List.generate(GRIDS_AMOUNT, (index) {
              return Container(
                margin: const EdgeInsets.all(2),
                width: width,
                height: height,
                color:
                    currentSate.colors[index], // Replace with desired box color
              );
            }),
          ),
        ),
      ),
    );
  }
}
