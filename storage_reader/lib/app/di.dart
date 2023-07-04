import 'package:http/http.dart';
import 'package:get_it/get_it.dart';

abstract class DI {
  static GetIt get di => GetIt.instance;

  static Future<void> init() async {
    di.registerLazySingleton<Client>(() => Client());
    // registerAuth();
  }

  // static void registerAuth() async {
  //   di.registerLazySingleton<AuthDataSource>(
  //       () => AuthDataSource(di<Client>()));
  //   di.registerLazySingleton<AuthRepositories>(
  //       () => AuthRepositories(di<AuthDataSource>()));
  //   di.registerFactory<AuthCubit>(() => AuthCubit(di<AuthRepositories>()));
  // }

}
