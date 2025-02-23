import 'package:ecommerce/view/bag/payment_method_view.dart';
import 'package:ecommerce/view/bag/shipping_address_view.dart';
import 'package:ecommerce/view/home/error_view.dart';
import 'package:ecommerce/view/orders/orders_view.dart';
import 'package:ecommerce/view/settings/settings_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/pp.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matilda Brown',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'matildabrown@mail.com',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('My Orders'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersView()),
                );
              },
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('Already have 12 orders'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShippingAddressView()),
                );
              },
              title: Text('Shipping Address'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('3 addresses'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentMethodView()),
                );
              },
              title: Text('Payment methods'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('visa  **34'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                promocodeBottoModalSheet();
              },
              title: Text('Promocodes'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('You have special promocodes'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataNotFoundPage()),
                );
              },
              title: Text('My reviews'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('0 Reviews'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsView()),
                );
              },
              title: Text('Settings'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('Notifications, password'),
            )
          ],
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
