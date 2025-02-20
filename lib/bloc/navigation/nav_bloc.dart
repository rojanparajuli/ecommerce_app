import 'package:ecommerce/view/bag/bag_view.dart';
import 'package:ecommerce/view/favorites/favorates_view.dart';
import 'package:ecommerce/view/home/home.dart';
import 'package:ecommerce/view/profile/profile_view.dart';
import 'package:ecommerce/view/shop/shop_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/bloc/navigation/nav_event.dart';
import 'package:ecommerce/bloc/navigation/nav_state.dart';
import 'package:flutter/material.dart';


class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(0, Home())) {
    on<NavigateTo>((event, emit) {
      emit(NavigationState(event.index, _getScreen(event.index)));
    });
  }

  static Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const ShopView();
      case 2:
        return const BagView();
      case 3:
        return const FavoratesView();
      case 4:
        return const ProfileView();
      default:
        return const Home();
    }
  }
}
