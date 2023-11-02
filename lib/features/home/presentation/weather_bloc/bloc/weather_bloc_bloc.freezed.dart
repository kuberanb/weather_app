// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lattitude, String longitude) fetchWeather,
    required TResult Function() fetchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lattitude, String longitude)? fetchWeather,
    TResult? Function()? fetchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lattitude, String longitude)? fetchWeather,
    TResult Function()? fetchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(FetchLocation value) fetchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(FetchLocation value)? fetchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(FetchLocation value)? fetchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocEventCopyWith<$Res> {
  factory $WeatherBlocEventCopyWith(
          WeatherBlocEvent value, $Res Function(WeatherBlocEvent) then) =
      _$WeatherBlocEventCopyWithImpl<$Res, WeatherBlocEvent>;
}

/// @nodoc
class _$WeatherBlocEventCopyWithImpl<$Res, $Val extends WeatherBlocEvent>
    implements $WeatherBlocEventCopyWith<$Res> {
  _$WeatherBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWeatherCopyWith<$Res> {
  factory _$$FetchWeatherCopyWith(
          _$FetchWeather value, $Res Function(_$FetchWeather) then) =
      __$$FetchWeatherCopyWithImpl<$Res>;
  @useResult
  $Res call({String lattitude, String longitude});
}

/// @nodoc
class __$$FetchWeatherCopyWithImpl<$Res>
    extends _$WeatherBlocEventCopyWithImpl<$Res, _$FetchWeather>
    implements _$$FetchWeatherCopyWith<$Res> {
  __$$FetchWeatherCopyWithImpl(
      _$FetchWeather _value, $Res Function(_$FetchWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lattitude = null,
    Object? longitude = null,
  }) {
    return _then(_$FetchWeather(
      lattitude: null == lattitude
          ? _value.lattitude
          : lattitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchWeather implements FetchWeather {
  const _$FetchWeather({required this.lattitude, required this.longitude});

  @override
  final String lattitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'WeatherBlocEvent.fetchWeather(lattitude: $lattitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeather &&
            (identical(other.lattitude, lattitude) ||
                other.lattitude == lattitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lattitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeatherCopyWith<_$FetchWeather> get copyWith =>
      __$$FetchWeatherCopyWithImpl<_$FetchWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lattitude, String longitude) fetchWeather,
    required TResult Function() fetchLocation,
  }) {
    return fetchWeather(lattitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lattitude, String longitude)? fetchWeather,
    TResult? Function()? fetchLocation,
  }) {
    return fetchWeather?.call(lattitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lattitude, String longitude)? fetchWeather,
    TResult Function()? fetchLocation,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(lattitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(FetchLocation value) fetchLocation,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(FetchLocation value)? fetchLocation,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(FetchLocation value)? fetchLocation,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class FetchWeather implements WeatherBlocEvent {
  const factory FetchWeather(
      {required final String lattitude,
      required final String longitude}) = _$FetchWeather;

  String get lattitude;
  String get longitude;
  @JsonKey(ignore: true)
  _$$FetchWeatherCopyWith<_$FetchWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchLocationCopyWith<$Res> {
  factory _$$FetchLocationCopyWith(
          _$FetchLocation value, $Res Function(_$FetchLocation) then) =
      __$$FetchLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLocationCopyWithImpl<$Res>
    extends _$WeatherBlocEventCopyWithImpl<$Res, _$FetchLocation>
    implements _$$FetchLocationCopyWith<$Res> {
  __$$FetchLocationCopyWithImpl(
      _$FetchLocation _value, $Res Function(_$FetchLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchLocation implements FetchLocation {
  const _$FetchLocation();

  @override
  String toString() {
    return 'WeatherBlocEvent.fetchLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lattitude, String longitude) fetchWeather,
    required TResult Function() fetchLocation,
  }) {
    return fetchLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lattitude, String longitude)? fetchWeather,
    TResult? Function()? fetchLocation,
  }) {
    return fetchLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lattitude, String longitude)? fetchWeather,
    TResult Function()? fetchLocation,
    required TResult orElse(),
  }) {
    if (fetchLocation != null) {
      return fetchLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWeather value) fetchWeather,
    required TResult Function(FetchLocation value) fetchLocation,
  }) {
    return fetchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWeather value)? fetchWeather,
    TResult? Function(FetchLocation value)? fetchLocation,
  }) {
    return fetchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWeather value)? fetchWeather,
    TResult Function(FetchLocation value)? fetchLocation,
    required TResult orElse(),
  }) {
    if (fetchLocation != null) {
      return fetchLocation(this);
    }
    return orElse();
  }
}

abstract class FetchLocation implements WeatherBlocEvent {
  const factory FetchLocation() = _$FetchLocation;
}

/// @nodoc
mixin _$WeatherBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get ErrorText => throw _privateConstructorUsedError;
  WeatherDataModel? get weatherDataModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherBlocStateCopyWith<WeatherBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocStateCopyWith<$Res> {
  factory $WeatherBlocStateCopyWith(
          WeatherBlocState value, $Res Function(WeatherBlocState) then) =
      _$WeatherBlocStateCopyWithImpl<$Res, WeatherBlocState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? ErrorText,
      WeatherDataModel? weatherDataModel});
}

/// @nodoc
class _$WeatherBlocStateCopyWithImpl<$Res, $Val extends WeatherBlocState>
    implements $WeatherBlocStateCopyWith<$Res> {
  _$WeatherBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? ErrorText = freezed,
    Object? weatherDataModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      ErrorText: freezed == ErrorText
          ? _value.ErrorText
          : ErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherDataModel: freezed == weatherDataModel
          ? _value.weatherDataModel
          : weatherDataModel // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherBlocStateCopyWith<$Res>
    implements $WeatherBlocStateCopyWith<$Res> {
  factory _$$_WeatherBlocStateCopyWith(
          _$_WeatherBlocState value, $Res Function(_$_WeatherBlocState) then) =
      __$$_WeatherBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? ErrorText,
      WeatherDataModel? weatherDataModel});
}

/// @nodoc
class __$$_WeatherBlocStateCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$_WeatherBlocState>
    implements _$$_WeatherBlocStateCopyWith<$Res> {
  __$$_WeatherBlocStateCopyWithImpl(
      _$_WeatherBlocState _value, $Res Function(_$_WeatherBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? ErrorText = freezed,
    Object? weatherDataModel = freezed,
  }) {
    return _then(_$_WeatherBlocState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      ErrorText: freezed == ErrorText
          ? _value.ErrorText
          : ErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherDataModel: freezed == weatherDataModel
          ? _value.weatherDataModel
          : weatherDataModel // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
    ));
  }
}

/// @nodoc

class _$_WeatherBlocState implements _WeatherBlocState {
  _$_WeatherBlocState(
      {required this.isLoading,
      required this.isError,
      this.ErrorText,
      this.weatherDataModel});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? ErrorText;
  @override
  final WeatherDataModel? weatherDataModel;

  @override
  String toString() {
    return 'WeatherBlocState(isLoading: $isLoading, isError: $isError, ErrorText: $ErrorText, weatherDataModel: $weatherDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherBlocState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.ErrorText, ErrorText) ||
                other.ErrorText == ErrorText) &&
            (identical(other.weatherDataModel, weatherDataModel) ||
                other.weatherDataModel == weatherDataModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, ErrorText, weatherDataModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherBlocStateCopyWith<_$_WeatherBlocState> get copyWith =>
      __$$_WeatherBlocStateCopyWithImpl<_$_WeatherBlocState>(this, _$identity);
}

abstract class _WeatherBlocState implements WeatherBlocState {
  factory _WeatherBlocState(
      {required final bool isLoading,
      required final bool isError,
      final String? ErrorText,
      final WeatherDataModel? weatherDataModel}) = _$_WeatherBlocState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get ErrorText;
  @override
  WeatherDataModel? get weatherDataModel;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherBlocStateCopyWith<_$_WeatherBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
