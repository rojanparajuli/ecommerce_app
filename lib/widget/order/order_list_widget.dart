import 'package:flutter/material.dart';

Widget orderListWiget(String orderNumber, String date, String trakingNumber,
    int quantity, int totalAmount, String status, ElevatedButton detail) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Number: $orderNumber',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tracking Number: $trakingNumber',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Quantity: $quantity',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount: $totalAmount',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              status,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: status == 'Delivered'
                    ? Colors.green
                    : status == 'Processing'
                        ? Colors.yellow
                        : Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            detail,
          ],
        ),
      ],
    ),
  );
}
