import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:megalab/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';
import 'package:megalab/features/auth/domain/usecases/auth_case.dart';
import 'package:megalab/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:megalab/features/home/data/repositories/post_list_repo_impl.dart';
import 'package:megalab/features/home/domain/repositories/post_list_repo.dart';
import 'package:megalab/features/home/domain/usecases/post_list_case.dart';
import 'package:megalab/features/home/presentation/bloc/home_bloc/post_list_bloc.dart';
import 'package:megalab/features/personal_screen/data/repositories/post_repo_impl.dart';
import 'package:megalab/features/personal_screen/domain/repositories/post_repo.dart';
import 'package:megalab/features/personal_screen/domain/usecases/post_case.dart';
import 'package:megalab/features/personal_screen/presentation/bloc/personal_bloc/post_bloc.dart';
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

  sl.registerLazySingleton<PostRepo>(
    () => PostRepoImpl(dio: sl<DioSettings>().dio),
  );
  sl.registerLazySingleton<PostListRepo>(
    () => PostListRepoImpl(dio: sl<DioSettings>().dio),
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

  sl.registerLazySingleton<LoadPostCase>(
    () => LoadPostCase(
      postRepo: (sl()),
    ),
  );
  sl.registerLazySingleton<PostListCase>(
    () => PostListCase(
      postListRepo: (sl()),
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

  sl.registerFactory(
    () => PostBloc(
      usecase: sl(),
    ),
  );
  sl.registerFactory(
    () => PostListBloc(
      usecase: sl(),
    ),
  );
}
