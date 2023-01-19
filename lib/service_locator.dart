import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:megalab/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';
import 'package:megalab/features/auth/domain/usecases/auth_case.dart';
import 'package:megalab/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
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
  //   () => AuthLocalDataImpl(dio: sl<DioSettings>().dio),
  // );

  /// Repositories
  sl.registerLazySingleton<RegisterRepo>(
    () => RegisterRepoImpl(dio: sl<DioSettings>().dio),
  );

  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(dio: sl<DioSettings>().dio),
  );

  /// UseCases
  sl.registerLazySingleton<RegisterCase>(
    () => RegisterCase(
      registerRepo: (sl()),
    ),
  );

  sl.registerLazySingleton<AuthCase>(
    () => AuthCase(
      authRepo: (sl()),
    ),
  );

  /// BloCs / Cubits
  sl.registerFactory(
    () => RegisterBloc(
      usecase: sl(),
    ),
  );
  sl.registerFactory(
    () => AuthBloc(
      usecase: sl(),
    ),
  );
}
