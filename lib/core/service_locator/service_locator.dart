import 'package:clean_architecture_structure/core/network/dio_consumer.dart';
import 'package:clean_architecture_structure/feature/auth/domain/use_case/login_use_case.dart';
import 'package:clean_architecture_structure/feature/auth/presentation/login/logic/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../network/network_status.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static Future<void> inIt() async {
    /// Features
    // Cubit
    sl.registerFactory(() => LoginCubit(sl()));

    // Use Case
    sl.registerLazySingleton(() => LoginUseCase(sl()));

    // Repository

    // Data Sources

    /// Core
    sl.registerLazySingleton<NetworkStatus>(() => NetworkStatusImp(sl()));
    sl.registerLazySingleton<DioConsumer>(
      ({bool isGoldRequest = false}) => DioConsumer(sl()),
    );

    /// External
    sl.registerLazySingleton<Dio>(() => Dio());
    sl.registerLazySingleton<InternetConnection>(
        () => InternetConnection.createInstance());
  }
}
