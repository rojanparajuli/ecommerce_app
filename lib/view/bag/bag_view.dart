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
                    height: 800000000000000000000,
                    child: ListView(
                      scrollDirection: Axis.vertical,
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
                        SizedBox(
                          height: 20,
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
                        SizedBox(
                          height: 20,
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
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: elevatedButtonWidget('Checkout', () {}),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
