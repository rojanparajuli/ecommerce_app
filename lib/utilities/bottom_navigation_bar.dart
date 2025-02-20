import 'package:ecommerce/bloc/navigation/nav_bloc.dart';
import 'package:ecommerce/bloc/navigation/nav_event.dart';
import 'package:ecommerce/bloc/navigation/nav_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce/view/bag/bag_view.dart';
import 'package:ecommerce/view/favorites/favorates_view.dart';
import 'package:ecommerce/view/home/home.dart';
import 'package:ecommerce/view/profile/profile_view.dart';
import 'package:ecommerce/view/shop/shop_view.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Widget> screens = [
      const Home(),
      const ShopView(),
      const BagView(),
      const FavoratesView(),
      const ProfileView(),
    ];


    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<NavigationBloc>().add(NavigateTo(index));
            },
            items: [
              _buildNavItem(Icons.home, Icons.home_outlined, "Home", state.selectedIndex == 0),
              _buildNavItem(Icons.shopping_cart, Icons.shopping_cart_outlined, "Shop", state.selectedIndex == 1),
              _buildNavItem(Icons.shopping_bag, Icons.shopping_bag_outlined, "Bag", state.selectedIndex == 2),
              _buildNavItem(Icons.favorite, Icons.favorite_border, "Favorites", state.selectedIndex == 3),
              _buildNavItem(Icons.person, Icons.person_outline, "Profile", state.selectedIndex == 4),
            ],
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
          ),
          body: screens[state.selectedIndex],
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData filledIcon, IconData outlinedIcon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: Icon(isSelected ? filledIcon : outlinedIcon),
      label: label,
    );
  }
}
