import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/features/home/domain/use cases/home_use_case.dart';

import '../../../../../core/location_helper.dart';
part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';
part 'weather_bloc_bloc.freezed.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  final WeatherDataUseCase weatherDataUseCase;

  WeatherBlocBloc(this.weatherDataUseCase) : super(WeatherBlocState.initial()) {
    on<FetchLocation>((event, emit) async {
      try {
        // Emit a loading state to inform the UI that the operation is in progress.
        emit(WeatherBlocState(
          isLoading: true,
          isError: false,
        ));

        ConnectivityResult connectivityResult =
            await Connectivity().checkConnectivity();

        // if (connectivityResult == ConnectivityResult.none) {
        //   emit(HomeError('No Internet Connection, Try Again'));
        // } else {
        // Use LocationHelper or Geolocator to fetch the current location.

        if (connectivityResult == ConnectivityResult.none) {
          final weatherData = await weatherDataUseCase.call(
            lattitude: '13',
            longitude: '25',
          );

          if (weatherData != null) {
            emit(WeatherBlocState(
              isLoading: false,
              weatherDataModel: weatherData,
              isError: false,
            ));
            // emit(DropDown1Loaded(''));
          } else {
            emit(WeatherBlocState(
                isLoading: false, isError: true, ErrorText: 'No Internet'));
          }
        } else {
          final location = await LocationHelper.getCurrentLocation();

          if (location != null) {
            // Location was successfully obtained. You can perform additional actions here.

            // Dispatch another event to fetch weather data using the obtained location.
            final weatherData = await weatherDataUseCase.call(
              lattitude: location.latitude.toString(),
              longitude: location.longitude.toString(),
            );

            if (weatherData != null) {
              emit(WeatherBlocState(
                isLoading: false,
                weatherDataModel: weatherData,
                isError: false,
              ));
              // emit(DropDown1Loaded(''));
            }
          } else {
            // Handle the case where the location could not be obtained.
            // emit(HomeError('Failed to fetch location.'));

            emit(WeatherBlocState(
                isLoading: false,
                isError: true,
                ErrorText: 'Failed to fetch location'));
          }
        }

        //  }
      } catch (e) {
        // Handle any potential exceptions or errors that may occur during the location fetch.
        //  emit(HomeError('An error occurred: $e'));

        emit(WeatherBlocState(
          isLoading: false,
          isError: true,
          ErrorText: e.toString(),
        ));
      }
    });
  }
}
