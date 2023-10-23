import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/features/home/data/database/home_local_database.dart';
import 'package:weather_app/features/home/data/database/home_remote_database.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatabase remoteDatabase;
  final HomeLocalDatabase localDatabase;

  HomeRepositoryImpl({
    required this.remoteDatabase,
    required this.localDatabase,
  });

  @override
  Future<WeatherDataModel?> getCurrentWeather(
      {required String lattitude, required String longitude}) async {
    try {
      bool isInternetAvailable =
          await Connectivity().checkConnectivity() != ConnectivityResult.none;

      if (isInternetAvailable == false) {
        bool isWeatherDataTableAvailable =
            await localDatabase.isWeatherDataTableAvailable();
        if (isWeatherDataTableAvailable) {
          var localWeatherData = await localDatabase.getHomeData();
          return localWeatherData;
        } else {
          print('weather data not stored locally');
          return null;
        }
      } else {
        final results = await remoteDatabase.getHomeData(
            lattitude: lattitude, longitude: longitude);
        if (results == null) {
          return null;
        } else {
          await localDatabase.storeHomeData(results);
          return results;
          //WeatherDataModel.fromJson(json.decode(results.toString()));
        }
      }
    } on DioException catch (e) {
      print('Dio Exception Occured in HomeRepositoryImpl : $e');
    } catch (e) {
      print('Exception Occured in HomeRepositoryImpl : $e');
      return null;
    }
  }
}
