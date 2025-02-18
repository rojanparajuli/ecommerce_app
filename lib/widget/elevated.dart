import 'package:flutter/material.dart';

Widget elevatedButtonWidget(String text, VoidCallback onPressed) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
  );
}
