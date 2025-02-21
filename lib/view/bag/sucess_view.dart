import 'package:ecommerce/utilities/bottom_navigation_bar.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/excited.png',
                  height: 600,
                ),
              ),
              const SizedBox(height: 20),
              Positioned(
                top: 50,
                left: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Success',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Your order will be delivered soon',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Thank you for choosing us',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    elevatedButtonWidget('Continue Shopping', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomBottomNavigationBar()));
                    }),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 160,
                top: 830,
                child: Center(
                  child: Container(
                    height: 6,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 70, 70, 70),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
