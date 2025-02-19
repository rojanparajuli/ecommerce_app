import 'package:ecommerce/view/orders/order_detail/order_detail.dart';
import 'package:ecommerce/widget/order/order_list_widget.dart';
import 'package:flutter/material.dart';

class DeliveredOrderView extends StatefulWidget {
  const DeliveredOrderView({super.key});

  @override
  State<DeliveredOrderView> createState() => _DeliveredOrderViewState();
}

class _DeliveredOrderViewState extends State<DeliveredOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123456',
                  '12/12/2021',
                  '123456',
                  2,
                  200,
                  'Delivered',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                    },
                    child: Text('Detail'),
                  )),
            ),
          
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123457',
                  '12/13/2021',
                  '123457',
                  4,
                  900,
                  'Delivered',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                    },
                    child: Text('Detail'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123458',
                  '12/14/2021',
                  '123458',
                  3,
                  500,
                  'Delivered',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                    },
                    child: Text('Detail'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123459',
                  '12/15/2021',
                  '123459',
                  5,
                  1000,
                  'Delivered',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                    },
                    child: Text('Detail'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123460',
                  '12/16/2021',
                  '123460',
                  1,
                  100,
                  'Delivered',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                    },
                    child: Text('Detail'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
