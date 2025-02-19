import 'package:ecommerce/bloc/name/name_validator_event.dart';
import 'package:ecommerce/bloc/name/name_validator_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameValidationBloc
    extends Bloc<NameValidationEvent, NameValidationState> {
  NameValidationBloc() : super(NameValidationInitial()) {
    on<ValidateName>(_onValidateName);
    on<ResetNameValidation>((event, emit) => emit(NameValidationInitial()));
  }

  void _onValidateName(ValidateName event, Emitter<NameValidationState> emit) {
    if (event.name.isEmpty) {
      emit(NameValidationInitial());
      return;
    }
    bool isValid = RegExp(r'^[a-zA-Z]+$').hasMatch(event.name);
    emit(isValid ? NameValid() : NameInvalid());
  }
}
