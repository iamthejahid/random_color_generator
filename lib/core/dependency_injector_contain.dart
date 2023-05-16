import 'package:get_it/get_it.dart';
import 'package:random_color_generator/domain/random_color_generator_domain.dart';
import 'package:random_color_generator/infrastructur/random_color_generator_i.dart';

///This line of code initializes an instance of the GetIt
///
///container and assigns
///
///it to the variable [sl].
final sl = GetIt.instance;

/// Initializes the dependency injection container.
/// Register the necessary dependencies for the application.
/// This function should be called before using any dependencies.
Future<void> init() async {
  sl.registerLazySingleton<RandomColorGeneratorDomain>(
    () => RandomColorGeneratorI(),
  );
}
