part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({required String selectedValue}) = Register;
  const factory RegisterEvent.selctRadio({required int radioVlaue}) = SelectRadio;
  const factory RegisterEvent.selectDropdownValue({required String selectedDropdownValue}) = selectDropdownValue;
}
