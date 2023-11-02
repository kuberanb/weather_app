part of 'weather_bloc_bloc.dart';

@freezed
class WeatherBlocEvent with _$WeatherBlocEvent {
  const factory WeatherBlocEvent.fetchWeather(
      {required String lattitude, required String longitude}) = FetchWeather;

  const factory WeatherBlocEvent.fetchLocation() = FetchLocation;
}
