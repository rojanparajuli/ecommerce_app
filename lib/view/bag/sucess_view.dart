import 'package:flutter/material.dart';

class SucessView extends StatelessWidget {
  const SucessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 205, 205),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/jpg-removebg-preview.png',)),
        ],
      ),
    );
  }
}
