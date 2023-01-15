import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerFactory<SharedPreferences>(() => sharedPreferences);

  /// Dio / Http
  // sl.registerLazySingleton<DioSettings>(
  //   () => DioSettings(),
  // );

  /// DataSources
  // sl.registerLazySingleton<CharactersNetworkData>(
  //   () => CharactersNetworkDataImpl(dio: sl<DioSettings>().dio),
  // );

  /// Repositories
  // sl.registerLazySingleton<CharactersRepository>(
  //   () => CharactersRepositoryImpl(sl()),
  // );

  /// UseCases
  // sl.registerLazySingleton(
  //   () => CharactersCase(sl()),
  // );

  /// BloCs / Cubits
  // sl.registerFactory(
  //   () => CharactersBloc(usecase: sl()),
  // );
}
