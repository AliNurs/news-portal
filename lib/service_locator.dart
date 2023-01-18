import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:megalab/features/register/data/repositories/register_repo_impl.dart';
import 'package:megalab/features/register/domain/repositories/register_repo.dart';
import 'package:megalab/features/register/domain/usecases/register_case.dart';
import 'package:megalab/features/register/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/register/data/datasources/dio_settings.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerFactory<SharedPreferences>(() => sharedPreferences);

  /// Dio / Http
  sl.registerLazySingleton<DioSettings>(
    () => DioSettings(),
  );

  /// DataSources
  // sl.registerLazySingleton<AuthNetworkData>(
  //   () => AuthNetworkDataImpl(dio: sl<DioSettings>().dio),
  // );

  /// Repositories
  sl.registerLazySingleton<RegisterRepo>(
    () => RegisterRepoImpl(dio: sl<DioSettings>().dio),
  );

  /// UseCases
  sl.registerLazySingleton<RegisterCase>(
    () => RegisterCase(
      registerRepo: (sl()),
    ),
  );

  /// BloCs / Cubits
  sl.registerFactory(
    () => RegisterBloc(
      usecase: sl(),
    ),
  );
}
