import 'package:ecommerce/widget/order/order_list_widget.dart';
import 'package:flutter/material.dart';

class CancelledOrderView extends StatefulWidget {
  const CancelledOrderView({super.key});

  @override
  State<CancelledOrderView> createState() => _CancelledOrderViewState();
}

class _CancelledOrderViewState extends State<CancelledOrderView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: <Widget>[
        Padding(
              padding: EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123456',
                  '12/12/2021',
                  '123456',
                  2,
                  200,
                  'Cancelled',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Detail'),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123457',
                  '12/13/2021',
                  '123457',
                  4,
                  900,
                  'Cancelled',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Detail'),
                  )),
            )
      ],),
    );
  }
}