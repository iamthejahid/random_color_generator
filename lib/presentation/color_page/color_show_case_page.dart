import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/core/dependency_injector_contain.dart';
import 'package:random_color_generator/core/values.dart';
import 'package:random_color_generator/presentation/color_page/multi_color_show_case_page.dart';

/// The Single Color Showing Page.
class ColorShowCasePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;

    final currentSate = ref.watch(colorStateNotifierProvider);
    final controller = ref.read(colorStateNotifierProvider.notifier);

    return Scaffold(
      body: GestureDetector(
        onTap: () => controller.colorChange(),
        child: Container(
          decoration: BoxDecoration(
            color: currentSate.bgColor,
          ),
          height: screenSize.height,
          width: screenSize.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello there",
                  style: TextStyle(
                    fontSize: FONT_SIZE,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      BUTTON_RADIUS,
                    ),
                  ),
                  color: currentSate.buttonColor,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "view the multi color show case",
                        style: TextStyle(
                          fontSize: FONT_SIZE,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MultiColorShowCasePage(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
