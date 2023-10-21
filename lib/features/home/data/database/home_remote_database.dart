import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/api_end_points.dart';
import 'package:weather_app/core/api_key.dart';
import 'package:weather_app/core/failures.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';

abstract class HomeRemoteDatabase {
  Future<WeatherDataModel?> getHomeData(
      {required String lattitude, required String longitude});
}

class HomeRemoteDatabaseImpl implements HomeRemoteDatabase {
  @override
  Future<WeatherDataModel?> getHomeData(
      {required String lattitude, required String longitude}) async {
    final dio = Dio();

    WeatherDataModel? weatherDataModel;

    print('lattitude : $lattitude');
    print("longitude : $longitude");
    Response response = await dio.get(
        '${ApiEndPoints.baseUrl}current.json?key=$apiKey&q=$lattitude,$longitude&aqi=no');
    print('home Remote Database Api Response : ${response}');

    if (response.statusCode == 200) {
      weatherDataModel =
          WeatherDataModel.fromJson(json.decode(response.toString()));
      return weatherDataModel;
    }
    // Handle the case where response status code is not 200
    return weatherDataModel;
  }
}
