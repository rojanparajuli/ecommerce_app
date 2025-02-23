import 'package:ecommerce/view/bag/checkout.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:flutter/material.dart';

class BagView extends StatefulWidget {
  const BagView({super.key});

  @override
  State<BagView> createState() => _BagViewState();
}

class _BagViewState extends State<BagView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(19.0),
                        child: Icon(Icons.search, size: 30),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(19.0),
                    child: Text(
                      'My Bag',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/whiteTshirt.jpeg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'White T-Shirt',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Color: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'White',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Size: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'M',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.remove,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.add,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.more_vert, color: Colors.black),
                                    SizedBox(height: 50),
                                    Text(
                                      'Rs. 2000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/products/first.jpeg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Casual Wear',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Color: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'Pink',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Size: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'M',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.remove,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.add,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.more_vert, color: Colors.black),
                                    SizedBox(height: 50),
                                    Text(
                                      'Rs. 2000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/blueTshirt.jpeg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Blue T-Shirt',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Color: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'Blue',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Size: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            TextSpan(
                                              text: 'M',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.remove,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            '9',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withValues(alpha: 0.3),
                                                    blurRadius: 6,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(Icons.add,
                                                  size: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.more_vert, color: Colors.black),
                                    SizedBox(height: 50),
                                    Text(
                                      'Rs. 3000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          promocodeBottoModalSheet();
                        },
                        child: Container(
                          width: 350,
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Enter Your Promo Code',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Icon(Icons.arrow_circle_right, size: 28),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Total amount',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          'Rs. 7000',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        width: 350,
                        child: elevatedButtonWidget('Checkout', () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
                        })),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void promocodeBottoModalSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 6,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Promo Code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: Icon(Icons.arrow_circle_right, size: 28),
                  ),
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Promo Codes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                _promoCodeItem(
                  image: 'assets/apple.png',
                  title: 'APPLE',
                  description: 'Get 20% off on Apple products',
                  remainingDays: '6 days remaining',
                  onApply: () {},
                ),
                const SizedBox(height: 12),
                _promoCodeItem(
                  image: 'assets/asw.png',
                  title: 'Amazon',
                  description: 'Flat 50% off on Nike shoes',
                  remainingDays: '3 days remaining',
                  onApply: () {},
                ),
                const SizedBox(height: 16),
                _promoCodeItem(
                  image: 'assets/Untitled.png',
                  title: 'Daraz',
                  description: 'Flat 50% off on any product',
                  remainingDays: '1 days remaining',
                  onApply: () {},
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _promoCodeItem({
    required String image,
    required String title,
    required String description,
    required String remainingDays,
    required VoidCallback onApply,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(image, height: 50, width: 50),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                  const SizedBox(height: 4),
                  Text(remainingDays,
                      style: TextStyle(fontSize: 12, color: Colors.redAccent)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    onVisible: () {
                    Future.delayed(Duration(seconds: 10), () {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    });
                    },
                  content: Text(
                    'Promo code applied',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(top: 0, left: 0, right: 0),
                  
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.red,
              ),
              child: Text('Apply',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
