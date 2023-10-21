import 'package:get_it/get_it.dart';
import 'package:weather_app/features/home/data/database/home_remote_database.dart';
import 'package:weather_app/features/home/data/repository/home_repository_impl.dart';
import 'package:weather_app/features/home/domain/repository/home_repository.dart';
import 'package:weather_app/features/home/domain/use%20cases/home_use_case.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Register Remote Database/DataSource
  getIt.registerSingleton<HomeRemoteDatabase>(HomeRemoteDatabaseImpl()); 

  // Register repositories
  getIt.registerSingleton<HomeRepository>(
      HomeRepositoryImpl(remoteDatabase: getIt<HomeRemoteDatabase>()));

  // Register use cases
  getIt.registerSingleton<WeatherDataUseCase>(
    WeatherDataUseCase(homeRepository: getIt<HomeRepository>()),
  );
}
