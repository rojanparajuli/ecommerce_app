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
              title: Text('Shipping Address'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('3 addresses'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text('Payment methods'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('visa  **34'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text('Promocodes'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('You have special promocodes'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text('My reviews'),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
              subtitle: Text('Reviews for 4 items'),
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
}
