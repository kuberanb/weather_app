import 'package:dartz/dartz.dart';
import 'package:weather_app/core/failures.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';

abstract class HomeRepository {
  Future<WeatherDataModel?> getCurrentWeather({
    required String lattitude,
    required String longitude,
  });
}
