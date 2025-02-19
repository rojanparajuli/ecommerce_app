import 'package:ecommerce/bloc/email/email_validator_event.dart';
import 'package:ecommerce/bloc/email/email_validator_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailValidationBloc extends Bloc<EmailValidationEvent, EmailValidationState> {
  EmailValidationBloc() : super(EmailValidationInitial()) {
    on<ValidateEmail>(_onValidateEmail);
    on<ResetValidation>((event, emit) => emit(EmailValidationInitial()));
  }

  void _onValidateEmail(ValidateEmail event, Emitter<EmailValidationState> emit) {
    if (event.email.isEmpty) {
      emit(EmailValidationInitial());
      return;
    }
    bool isValid = RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(event.email);
    emit(isValid ? EmailValid() : EmailInvalid());
  }

  void removevalidationstate() {
    add(ResetValidation());
  }
}