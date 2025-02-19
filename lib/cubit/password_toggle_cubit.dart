import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(false);

  void toggleVisibility() => emit(!state);

  void reset() => emit(false);

  void toggleVisibilityLogin() => emit(!state);
  void resetLogin() => emit(false);
}