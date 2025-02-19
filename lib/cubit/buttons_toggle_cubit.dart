import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsToggleCubit extends Cubit<bool> {
  ButtonsToggleCubit() : super(false);

  void toggle() => emit(!state);
}
