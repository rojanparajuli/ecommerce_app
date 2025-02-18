import 'package:flutter_bloc/flutter_bloc.dart';

class EmailValidationCubit extends Cubit<bool> {
  EmailValidationCubit() : super(false);

  void validateEmail(String email) {
    bool isValid = RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
    emit(isValid);
  }
}
