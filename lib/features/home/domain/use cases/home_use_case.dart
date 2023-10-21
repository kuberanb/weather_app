import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/features/home/domain/repository/home_repository.dart';

class WeatherDataUseCase {
  WeatherDataUseCase({required HomeRepository homeRepository})
      : _repository = homeRepository;

  final HomeRepository _repository;

  Future<WeatherDataModel?> call(
      {required String lattitude, required String longitude}) async {
    final weatherData = _repository.getCurrentWeather(
        lattitude: lattitude, longitude: longitude);
  }
}
