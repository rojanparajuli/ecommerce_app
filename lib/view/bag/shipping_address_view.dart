import 'package:ecommerce/view/bag/add_shipping_address_view.dart';
import 'package:flutter/material.dart';

class ShippingAddressView extends StatefulWidget {
  const ShippingAddressView({super.key});

  @override
  State<ShippingAddressView> createState() => _ShippingAddressViewState();
}

class _ShippingAddressViewState extends State<ShippingAddressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
        title: Text('Shipping address',
            style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jane Doe',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AddShippingAddressView()));
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '3 Newbridge Court',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Chino Hills, CA 91709, United States',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_box_outline_blank, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Use as the shipping address',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jane Doe',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AddShippingAddressView()));
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '3 Newbridge Court',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Chino Hills, CA 91709, United States',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_box, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Use as the shipping address',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jane Doe',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AddShippingAddressView()));
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '3 Newbridge Court',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Chino Hills, CA 91709, United States',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_box_outline_blank, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Use as the shipping address',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddShippingAddressView()));
              },
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Icon(Icons.add_circle, color: Colors.black, size: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
