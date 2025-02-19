import 'package:ecommerce/widget/order/order_list_widget.dart';
import 'package:flutter/material.dart';

class ProcessingOrderView extends StatefulWidget {
  const ProcessingOrderView({super.key});

  @override
  State<ProcessingOrderView> createState() => _ProcessingOrderViewState();
}

class _ProcessingOrderViewState extends State<ProcessingOrderView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123456',
                  '12/12/2021',
                  '123456',
                  2,
                  200,
                  'Processing',
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
              padding: const EdgeInsets.all(8.0),
              child: orderListWiget(
                  '123457',
                  '12/13/2021',
                  '123457',
                  4,
                  900,
                  'Processing',
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