import 'package:flutter_bloc/flutter_bloc.dart';

class OrderNavigationCubit extends Cubit<int> {
  OrderNavigationCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
