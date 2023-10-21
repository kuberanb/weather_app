import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/features/home/data/database/home_remote_database.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatabase remoteDatabase;

  HomeRepositoryImpl({required this.remoteDatabase});

  @override
  Future<WeatherDataModel?> getCurrentWeather(
      {required String lattitude, required String longitude}) async {
    try {
      
      final results = await remoteDatabase.getHomeData(
          lattitude: lattitude, longitude: longitude);
      if (results == null) {
        return null;
      } else {
        return WeatherDataModel.fromJson(json.decode(results.toString()));
      }
    } on DioException catch (e) {
      print('Dio Exception Occured in HomeRepositoryImpl : $e');
    } catch (e) {
      print('Exception Occured in HomeRepositoryImpl : $e');
      return null;
    }
  }
}
