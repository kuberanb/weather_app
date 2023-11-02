part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    required bool isLoading,
    required bool isError,
    required String selectedValue,
    required int selectedRadioValue,
  }) = _RegisterState;

  factory RegisterState.initial() {
    return RegisterState(
      isLoading: false,
      isError: false,
      selectedValue: 'Initial',
      selectedRadioValue: 5,
    );
  }
}
