part of 'weather_bloc_bloc.dart';

@freezed
class WeatherBlocState with _$WeatherBlocState {
  factory WeatherBlocState({
    required bool isLoading,
    required bool isError,
    String? ErrorText,
    WeatherDataModel? weatherDataModel,
  }) = _WeatherBlocState;

  factory WeatherBlocState.initial() {
    return WeatherBlocState(
        isLoading: true, isError: false, weatherDataModel: null,ErrorText: null);
  }
}
