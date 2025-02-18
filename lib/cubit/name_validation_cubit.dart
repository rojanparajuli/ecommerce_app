import 'package:flutter_bloc/flutter_bloc.dart';

class NameValidationCubit extends Cubit<bool> {
  static const bool valid = true;
  static const bool notvalid = false;
  NameValidationCubit() : super(false);
  void namevalidation(String name) {
    if (RegExp(r'^[a-zA-Z]+$').hasMatch(name)) {
      emit(valid);
    } else {
      emit(notvalid);
    }
  }
}
