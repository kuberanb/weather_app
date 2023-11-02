// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue) register,
    required TResult Function(int radioVlaue) selctRadio,
    required TResult Function(String selectedDropdownValue) selectDropdownValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue)? register,
    TResult? Function(int radioVlaue)? selctRadio,
    TResult? Function(String selectedDropdownValue)? selectDropdownValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue)? register,
    TResult Function(int radioVlaue)? selctRadio,
    TResult Function(String selectedDropdownValue)? selectDropdownValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
    required TResult Function(SelectRadio value) selctRadio,
    required TResult Function(selectDropdownValue value) selectDropdownValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Register value)? register,
    TResult? Function(SelectRadio value)? selctRadio,
    TResult? Function(selectDropdownValue value)? selectDropdownValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    TResult Function(SelectRadio value)? selctRadio,
    TResult Function(selectDropdownValue value)? selectDropdownValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterCopyWith<$Res> {
  factory _$$RegisterCopyWith(
          _$Register value, $Res Function(_$Register) then) =
      __$$RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedValue});
}

/// @nodoc
class __$$RegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$Register>
    implements _$$RegisterCopyWith<$Res> {
  __$$RegisterCopyWithImpl(_$Register _value, $Res Function(_$Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$Register(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Register implements Register {
  const _$Register({required this.selectedValue});

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'RegisterEvent.register(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Register &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCopyWith<_$Register> get copyWith =>
      __$$RegisterCopyWithImpl<_$Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue) register,
    required TResult Function(int radioVlaue) selctRadio,
    required TResult Function(String selectedDropdownValue) selectDropdownValue,
  }) {
    return register(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue)? register,
    TResult? Function(int radioVlaue)? selctRadio,
    TResult? Function(String selectedDropdownValue)? selectDropdownValue,
  }) {
    return register?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue)? register,
    TResult Function(int radioVlaue)? selctRadio,
    TResult Function(String selectedDropdownValue)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
    required TResult Function(SelectRadio value) selctRadio,
    required TResult Function(selectDropdownValue value) selectDropdownValue,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Register value)? register,
    TResult? Function(SelectRadio value)? selctRadio,
    TResult? Function(selectDropdownValue value)? selectDropdownValue,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    TResult Function(SelectRadio value)? selctRadio,
    TResult Function(selectDropdownValue value)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements RegisterEvent {
  const factory Register({required final String selectedValue}) = _$Register;

  String get selectedValue;
  @JsonKey(ignore: true)
  _$$RegisterCopyWith<_$Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRadioCopyWith<$Res> {
  factory _$$SelectRadioCopyWith(
          _$SelectRadio value, $Res Function(_$SelectRadio) then) =
      __$$SelectRadioCopyWithImpl<$Res>;
  @useResult
  $Res call({int radioVlaue});
}

/// @nodoc
class __$$SelectRadioCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SelectRadio>
    implements _$$SelectRadioCopyWith<$Res> {
  __$$SelectRadioCopyWithImpl(
      _$SelectRadio _value, $Res Function(_$SelectRadio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radioVlaue = null,
  }) {
    return _then(_$SelectRadio(
      radioVlaue: null == radioVlaue
          ? _value.radioVlaue
          : radioVlaue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectRadio implements SelectRadio {
  const _$SelectRadio({required this.radioVlaue});

  @override
  final int radioVlaue;

  @override
  String toString() {
    return 'RegisterEvent.selctRadio(radioVlaue: $radioVlaue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRadio &&
            (identical(other.radioVlaue, radioVlaue) ||
                other.radioVlaue == radioVlaue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radioVlaue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRadioCopyWith<_$SelectRadio> get copyWith =>
      __$$SelectRadioCopyWithImpl<_$SelectRadio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue) register,
    required TResult Function(int radioVlaue) selctRadio,
    required TResult Function(String selectedDropdownValue) selectDropdownValue,
  }) {
    return selctRadio(radioVlaue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue)? register,
    TResult? Function(int radioVlaue)? selctRadio,
    TResult? Function(String selectedDropdownValue)? selectDropdownValue,
  }) {
    return selctRadio?.call(radioVlaue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue)? register,
    TResult Function(int radioVlaue)? selctRadio,
    TResult Function(String selectedDropdownValue)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (selctRadio != null) {
      return selctRadio(radioVlaue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
    required TResult Function(SelectRadio value) selctRadio,
    required TResult Function(selectDropdownValue value) selectDropdownValue,
  }) {
    return selctRadio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Register value)? register,
    TResult? Function(SelectRadio value)? selctRadio,
    TResult? Function(selectDropdownValue value)? selectDropdownValue,
  }) {
    return selctRadio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    TResult Function(SelectRadio value)? selctRadio,
    TResult Function(selectDropdownValue value)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (selctRadio != null) {
      return selctRadio(this);
    }
    return orElse();
  }
}

abstract class SelectRadio implements RegisterEvent {
  const factory SelectRadio({required final int radioVlaue}) = _$SelectRadio;

  int get radioVlaue;
  @JsonKey(ignore: true)
  _$$SelectRadioCopyWith<_$SelectRadio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$selectDropdownValueCopyWith<$Res> {
  factory _$$selectDropdownValueCopyWith(_$selectDropdownValue value,
          $Res Function(_$selectDropdownValue) then) =
      __$$selectDropdownValueCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDropdownValue});
}

/// @nodoc
class __$$selectDropdownValueCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$selectDropdownValue>
    implements _$$selectDropdownValueCopyWith<$Res> {
  __$$selectDropdownValueCopyWithImpl(
      _$selectDropdownValue _value, $Res Function(_$selectDropdownValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDropdownValue = null,
  }) {
    return _then(_$selectDropdownValue(
      selectedDropdownValue: null == selectedDropdownValue
          ? _value.selectedDropdownValue
          : selectedDropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectDropdownValue implements selectDropdownValue {
  const _$selectDropdownValue({required this.selectedDropdownValue});

  @override
  final String selectedDropdownValue;

  @override
  String toString() {
    return 'RegisterEvent.selectDropdownValue(selectedDropdownValue: $selectedDropdownValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectDropdownValue &&
            (identical(other.selectedDropdownValue, selectedDropdownValue) ||
                other.selectedDropdownValue == selectedDropdownValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDropdownValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectDropdownValueCopyWith<_$selectDropdownValue> get copyWith =>
      __$$selectDropdownValueCopyWithImpl<_$selectDropdownValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue) register,
    required TResult Function(int radioVlaue) selctRadio,
    required TResult Function(String selectedDropdownValue) selectDropdownValue,
  }) {
    return selectDropdownValue(selectedDropdownValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue)? register,
    TResult? Function(int radioVlaue)? selctRadio,
    TResult? Function(String selectedDropdownValue)? selectDropdownValue,
  }) {
    return selectDropdownValue?.call(selectedDropdownValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue)? register,
    TResult Function(int radioVlaue)? selctRadio,
    TResult Function(String selectedDropdownValue)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (selectDropdownValue != null) {
      return selectDropdownValue(selectedDropdownValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Register value) register,
    required TResult Function(SelectRadio value) selctRadio,
    required TResult Function(selectDropdownValue value) selectDropdownValue,
  }) {
    return selectDropdownValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Register value)? register,
    TResult? Function(SelectRadio value)? selctRadio,
    TResult? Function(selectDropdownValue value)? selectDropdownValue,
  }) {
    return selectDropdownValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Register value)? register,
    TResult Function(SelectRadio value)? selctRadio,
    TResult Function(selectDropdownValue value)? selectDropdownValue,
    required TResult orElse(),
  }) {
    if (selectDropdownValue != null) {
      return selectDropdownValue(this);
    }
    return orElse();
  }
}

abstract class selectDropdownValue implements RegisterEvent {
  const factory selectDropdownValue(
      {required final String selectedDropdownValue}) = _$selectDropdownValue;

  String get selectedDropdownValue;
  @JsonKey(ignore: true)
  _$$selectDropdownValueCopyWith<_$selectDropdownValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get selectedValue => throw _privateConstructorUsedError;
  int get selectedRadioValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String selectedValue,
      int selectedRadioValue});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? selectedValue = null,
    Object? selectedRadioValue = null,
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
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectedRadioValue: null == selectedRadioValue
          ? _value.selectedRadioValue
          : selectedRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String selectedValue,
      int selectedRadioValue});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? selectedValue = null,
    Object? selectedRadioValue = null,
  }) {
    return _then(_$_RegisterState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectedRadioValue: null == selectedRadioValue
          ? _value.selectedRadioValue
          : selectedRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  _$_RegisterState(
      {required this.isLoading,
      required this.isError,
      required this.selectedValue,
      required this.selectedRadioValue});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String selectedValue;
  @override
  final int selectedRadioValue;

  @override
  String toString() {
    return 'RegisterState(isLoading: $isLoading, isError: $isError, selectedValue: $selectedValue, selectedRadioValue: $selectedRadioValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue) &&
            (identical(other.selectedRadioValue, selectedRadioValue) ||
                other.selectedRadioValue == selectedRadioValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, selectedValue, selectedRadioValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  factory _RegisterState(
      {required final bool isLoading,
      required final bool isError,
      required final String selectedValue,
      required final int selectedRadioValue}) = _$_RegisterState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get selectedValue;
  @override
  int get selectedRadioValue;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
