import 'package:flutter/material.dart';

Widget customTextField(
  String hintText, {
  Widget? suffixIcon,
  TextEditingController? controller,
  void Function(String)? onChanged,
  void Function()? onPressed,
}) {
  return SizedBox(
    width: 350,
    child: TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: suffixIcon != null
            ? GestureDetector(onTap: onPressed, child: suffixIcon)
            : null,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
  );
}
