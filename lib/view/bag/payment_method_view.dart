import 'package:ecommerce/widget/credit_card/credit_card_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  @override
  PaymentMethodViewState createState() => PaymentMethodViewState();
}

class PaymentMethodViewState extends State<PaymentMethodView> {
  bool isDefaultCard1 = true;
  bool isDefaultCard2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment methods'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your payment cards',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildCardWithCheckbox(
              cardNumber: '**** **** **** 3947',
              cardHolder: 'Jennyfer Doe',
              expiryDate: '05/23',
              isDefault: isDefaultCard1,
              isMastercard: true,
              onChanged: (value) {
                setState(() {
                  isDefaultCard1 = value;
                  isDefaultCard2 = !value;
                });
              },
            ),
            _buildCardWithCheckbox(
              cardNumber: '**** **** **** 4546',
              cardHolder: 'Jennyfer Doe',
              expiryDate: '11/22',
              isDefault: isDefaultCard2,
              isMastercard: false,
              onChanged: (value) {
                setState(() {
                  isDefaultCard2 = value;
                  isDefaultCard1 = !value;
                });
              },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  _addcardBottomModalSheet();
                },
                child: const Icon(Icons.add_circle, size: 40),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 8,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 62, 61, 61),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardWithCheckbox({
    required String cardNumber,
    required String cardHolder,
    required String expiryDate,
    required bool isDefault,
    required bool isMastercard,
    required Function(bool) onChanged,
  }) {
    return Column(
      children: [
        _customPaintCard(
          cardNumber: cardNumber,
          cardHolder: cardHolder,
          expiryDate: expiryDate,
          isMastercard: isMastercard,
          isDefault: isDefault,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Checkbox(
              value: isDefault,
              onChanged: (value) => onChanged(value!),
            ),
            const Text('Use as default payment method'),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _customPaintCard({
    required String cardNumber,
    required String cardHolder,
    required String expiryDate,
    required bool isMastercard,
    required bool isDefault,
  }) {
    return CustomPaint(
      painter: CardPainter(isDefault),
      child: Container(
        height: 220,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Image.asset(
                  isMastercard ? 'assets/mastercard.png' : 'assets/visa.png',
                  height: 24,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              cardNumber,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Holder',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    Text(
                      cardHolder,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry Date',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    Text(
                      expiryDate,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _addcardBottomModalSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            height: 503,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: const Text(
                    'Add New Card',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name on Card',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/mastercard.png',
                        height: 5,
                      ),
                    ),
                    // suffix: Container(
                    //   color: Colors.deepOrange,
                    //   child: I),
                    labelText: 'Card Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 12),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Expiry Date',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.help_outline_outlined),
                        labelText: 'CVV',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                    const Text(
                      'Use as default payment method',
                      style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: 200,
                    // height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    height: 6,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
