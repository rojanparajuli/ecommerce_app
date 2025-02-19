import 'package:ecommerce/cubit/buttons_toggle_cubit.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:ecommerce/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back_ios_new, size: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search, size: 30),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: const Text(
                    'Personal Information',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                customTextField('Full Name'),
                SizedBox(height: 20),
                customTextField('Date of Birth'),
                SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _changepasswordButtomModalSheet();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Text(
                          'Change',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<PasswordVisibilityCubit, bool>(
                  builder: (context, isPasswordHidden) {
                    return Center(
                      child: customTextField(
                        'Password',
                        controller: _passwordController,
                        suffixIcon: Icon(
                          isPasswordHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          context
                              .read<PasswordVisibilityCubit>()
                              .toggleVisibility();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: Text(
                            'Sales',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        BlocBuilder<ButtonsToggleCubit, bool>(
                          builder: (context, state) => Padding(
                            padding: const EdgeInsets.all(19.0),
                            child: Switch(
                              value: true,
                              onChanged: (value) {
                                context.read<ButtonsToggleCubit>().toggle();
                              },
                              activeColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: Text(
                            'New arrivals',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        BlocBuilder<ButtonsToggleCubit, bool>(
                          builder: (context, state) => Padding(
                            padding: const EdgeInsets.all(19.0),
                            child: Switch(
                              value: state,
                              onChanged: (value) {
                                context.read<ButtonsToggleCubit>().toggle();
                              },
                              activeColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: Text(
                            'Delivery status changes',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        BlocBuilder<ButtonsToggleCubit, bool>(
                          builder: (context, state) => Padding(
                            padding: const EdgeInsets.all(19.0),
                            child: Switch(
                              value: state,
                              onChanged: (value) {
                                context.read<ButtonsToggleCubit>().toggle();
                              },
                              activeColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _changepasswordButtomModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Change Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  customTextField('Old Password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  customTextField('New Password'),
                  SizedBox(height: 30),
                  customTextField('Confirm Password'),
                  SizedBox(height: 30),
                  SizedBox(
                      width: 350,
                      child: elevatedButtonWidget('Save Password', () {})),
                  SizedBox(height: 20),
                  Container(
                    height: 5,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
