import 'package:ecommerce/widget/button/elevated.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkout',
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  'Shipping address',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Theme.of(context).shadowColor)],
                  ),
                  width: 390,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rojan Parajuli'),
                          Text(
                            'Change',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('3 Newbridge Court'),
                          Text('Chino Hills, CA 91709, United States'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Text('Change', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/masterCard.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Text('**** **** **** 3947'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  'Delivery Method',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/fedex.png',
                            height: 60,
                            width: 60,
                          ),
                          Text('2-3 days')
                        ],
                      )),
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/usps.png',
                            height: 60,
                            width: 60,
                          ),
                          Text('2-3 days')
                        ],
                      )),
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/dhl.png',
                            height: 60,
                            width: 60,
                          ),
                          Text('2-3 days')
                        ],
                      )),
                      
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Order:', style: TextStyle(color: Colors.grey),),
                  Text(' Rs. 100.00', style: TextStyle(color: Colors.black),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Delivery:', style: TextStyle(color: Colors.grey),),
                  Text(' Rs. 100.00', style: TextStyle(color: Colors.black),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Summary:', style: TextStyle(color: Colors.grey),),
                  Text(' Rs. 200.00', style: TextStyle(color: Colors.black),),
                ],),
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: elevatedButtonWidget('Submit Order', (){})),
              )
            ],
          ),
        ),
      ),
    );
  }
}
