import 'package:flutter/material.dart';
import 'package:random_color_generator/core/font_size.dart';
import 'package:random_color_generator/presentation/color_page/multi_color_show_case_page.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The Single Color Showing Page.
class ColorShowCasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello there",
                      style: TextStyle(
                        fontSize: FONT_SIZE,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "view the multi color show case",
                            style: TextStyle(
                              fontSize: FONT_SIZE,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Icon(
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
        ],
      ),
    );
  }
}
