// home_bloc.dart

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/location_helper.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/features/home/domain/use%20cases/home_use_case.dart';

part '../home/home_event.dart';
part '../home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WeatherDataUseCase weatherDataUseCase;

  HomeBloc(this.weatherDataUseCase) : super(HomeInitial()) {
    on<FetchLocation>((event, emit) async {
      try {
        // Emit a loading state to inform the UI that the operation is in progress.
        emit(HomeLoading());

        // Use LocationHelper or Geolocator to fetch the current location.
        final location = await LocationHelper.getCurrentLocation();

        if (location != null) {
          // Location was successfully obtained. You can perform additional actions here.

          // Dispatch another event to fetch weather data using the obtained location.
          final weatherData = await weatherDataUseCase(
            lattitude: location.latitude.toString(),
            longitude: location.longitude.toString(),
          );

          if (weatherData != null) {
            emit(HomeLoaded(weatherData));
          }
        } else {
          // Handle the case where the location could not be obtained.
          emit(HomeError('Failed to fetch location.'));
        }
      } catch (e) {
        // Handle any potential exceptions or errors that may occur during the location fetch.
        emit(HomeError('An error occurred: $e'));
      }
    });
  }
  // @override
  // Stream<HomeState> mapEventToState(HomeEvent event) async* {
  //   if (event is FetchLocation) {
  //     yield HomeLoading();
  //     final location = await LocationHelper.getCurrentLocation();

  //     if (location != null) {
  //       // Pass the location to your WeatherDataUseCase and handle the result
  //       final weatherData = await weatherDataUseCase(
  //         lattitude: location.latitude.toString(),
  //         longitude: location.longitude.toString(),
  //       );

  //       if (weatherData != null) {
  //         yield HomeLoaded(weatherData);
  //       } else {
  //         yield HomeError('Failed to fetch data.');
  //       }
  //     } else {
  //       yield HomeError('Failed to fetch location.');
  //     }
  //   }
  // }
}
