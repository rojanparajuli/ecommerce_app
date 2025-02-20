import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order Detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  'Order ID: 123456',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text('12/12/2021'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: RichText(
                    text: TextSpan(
                  text: 'Tracking number: ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '123456sfdgdfytr',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  'Delivered',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text('3 items'),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 120,
                  child: ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: double.infinity,
                      ),
                      child: Image.asset('assets/whiteTshirt.jpeg',
                          fit: BoxFit.cover),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('White Tshirt',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Mango',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Color: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'White',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                text: 'Size: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'L',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('Unit: 1',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                    trailing: Text('Qty: 2',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 120,
                  child: ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: double.infinity,
                      ),
                      child: Image.asset('assets/blueTshirt.jpeg',
                          fit: BoxFit.cover),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Blue Tshirt',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Nike',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Color: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Blue',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                text: 'Size: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'M',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('Unit: 1',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                    trailing: Text('Qty: 1',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 120,
                  child: ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: double.infinity,
                      ),
                      child: Image.asset('assets/brownTshirt.jpeg',
                          fit: BoxFit.cover),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Brown Tshirt',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Adidas',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Color: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Brown',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                text: 'Size: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'S',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('Unit: 1',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                    trailing: Text('Qty: 1',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Information',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 15),
                RichText(
                    text: TextSpan(
                  text: 'Shipping Address: ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '3 Newbridge Court ,Chino Hills, CA 91709, United States',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Payment Method:',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/masterCard.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '**** **** **** 3947',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                RichText(
                    text: TextSpan(
                  text: 'Delivery Method: ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'FedEx , 3days, 20\$',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
