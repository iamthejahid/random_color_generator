import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_color_generator/application/app.dart';
import 'package:random_color_generator/core/dependency_injector_contain.dart'
    as _di;

void main() async {
  await _di.init();
  runApp(const ProviderScope(child: App()));
}
