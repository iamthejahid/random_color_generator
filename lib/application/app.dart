import 'package:flutter/material.dart';
import 'package:random_color_generator/presentation/color_page/color_show_case_page.dart';

/// The root widget of the application.
class App extends StatelessWidget {
  /// Creates a new instance of the [App] widget.
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorShowCasePage(),
    );
  }
}
