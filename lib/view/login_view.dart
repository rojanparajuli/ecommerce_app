import 'package:ecommerce/cubit/email_validation_cubit.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.arrow_back_ios_new, size: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.all(19.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 60),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlocBuilder<EmailValidationCubit, bool>(
                        builder: (context, isValid) {
                          return Center(
                            child: customTextField(
                              'Email',
                              controller: _emailController,
                              onChanged: (value) {
                                context
                                    .read<EmailValidationCubit>()
                                    .validateEmail(value);
                              },
                              suffixIcon: isValid
                                  ? const Icon(Icons.check, color: Colors.green)
                                  : null,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                         
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Forgot Password?', style: TextStyle(color: Colors.black, fontSize: 15),),
                              Icon(Icons.arrow_forward_outlined, color: Colors.red,),
                            ],),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
