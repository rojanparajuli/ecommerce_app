import 'package:ecommerce/cubit/navigation_cubit.dart';
import 'package:ecommerce/view/orders/cancelled_order_view.dart';
import 'package:ecommerce/view/orders/delivered_order_view.dart';
import 'package:ecommerce/view/orders/processing_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  final List<Widget> _pages = const [
    DeliveredOrderView(),
    ProcessingOrderView(),
    CancelledOrderView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, selectedIndex) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back_ios_new, size: 30),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search, size: 30),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.read<NavigationCubit>().changeIndex(0),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedIndex == 0 ? Colors.black : Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Delivered'),
                    ),
                    ElevatedButton(
                      onPressed: () => context.read<NavigationCubit>().changeIndex(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedIndex == 1 ? Colors.black : Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Processing'),
                    ),
                    ElevatedButton(
                      onPressed: () => context.read<NavigationCubit>().changeIndex(2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedIndex == 2 ? Colors.black : Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Cancelled'),
                    ),
                  ],
                ),
                Expanded(
                  child: _pages[selectedIndex],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
