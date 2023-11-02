import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<Register>((event, emit) async {
      emit(RegisterState(
          isLoading: true,
          isError: false,
          selectedValue: state.selectedValue,
          selectedRadioValue: state.selectedRadioValue));
      await Future.delayed(const Duration(seconds: 5));
      print(' event selectedvalue ${event.selectedValue}');
      emit(RegisterState(
          isLoading: false,
          isError: false,
          selectedValue: event.selectedValue,
          selectedRadioValue: state.selectedRadioValue));

      // TODO: implement event handler
    });

    on<SelectRadio>((event, emit) {
      print('select Rafio Event calleed');
      print('event.selctedRadiov : ${event.radioVlaue}');
      emit(RegisterState(
          isLoading: false,
          isError: state.isError,
          selectedValue: state.selectedValue,
          selectedRadioValue: event.radioVlaue));
    });

    on<selectDropdownValue>((event, emit) {
      print('select dropdown event called');
      emit(RegisterState(
          isLoading: false,
          isError: false,
          selectedValue: event.selectedDropdownValue,
          selectedRadioValue: state.selectedRadioValue));
    });
  }
}
