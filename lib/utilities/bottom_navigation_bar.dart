import 'dart:io';

import 'package:ecommerce/bloc/navigation/nav_bloc.dart';
import 'package:ecommerce/bloc/navigation/nav_event.dart';
import 'package:ecommerce/bloc/navigation/nav_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      const FavoritesView(),
      const ProfileView(),
    ];

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        // ignore: deprecated_member_use
        return WillPopScope(
          onWillPop: () async {
  if (state.selectedIndex != 0) {
    context.read<NavigationBloc>().add(NavigateTo(0));
    return false;
  }

  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        "Exit App",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      content: Text(
        "Are you sure you want to exit?",
        style: TextStyle(fontSize: 16),
      ),
      actions: [
        TextButton(
          onPressed: () {
          
           Navigator.of(context).pop(false);
          },
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
              if (Platform.isAndroid) {
              SystemNavigator.pop();
            } else if (Platform.isIOS) {
              exit(0);
            }
          },
          child: Text(
            "Exit",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    ),
  ) ?? false;
},
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: state.selectedIndex,
              onTap: (index) {
                context.read<NavigationBloc>().add(NavigateTo(index));
              },
              items: [
                _buildNavItem(Icons.home, Icons.home_outlined, "Home",
                    state.selectedIndex == 0),
                _buildNavItem(Icons.shopping_cart, Icons.shopping_cart_outlined,
                    "Shop", state.selectedIndex == 1),
                _buildNavItem(Icons.shopping_bag, Icons.shopping_bag_outlined,
                    "Bag", state.selectedIndex == 2),
                _buildNavItem(Icons.favorite, Icons.favorite_border,
                    "Favorites", state.selectedIndex == 3),
                _buildNavItem(Icons.person, Icons.person_outline, "Profile",
                    state.selectedIndex == 4),
              ],
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
            ),
            body: screens[state.selectedIndex],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData filledIcon,
      IconData outlinedIcon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: Icon(isSelected ? filledIcon : outlinedIcon),
      label: label,
    );
  }
}
