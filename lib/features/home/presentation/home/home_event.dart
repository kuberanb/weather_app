part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends HomeEvent {
  final String lattitude;
  final String longitude;

  FetchWeather(this.lattitude, this.longitude);
}

class FetchLocation extends HomeEvent {
  @override
  List<Object> get props => [];
}

