import 'package:ecommerce/cubit/name_validation_cubit.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/cubit/email_validation_cubit.dart';
import 'package:ecommerce/view/login_view.dart';
import 'package:ecommerce/widget/elevated.dart';
import 'package:ecommerce/widget/social_buttons.dart';
import 'package:ecommerce/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_back_ios_new, size: 24),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(19.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocBuilder<NameValidationCubit, bool>(
                      builder: (context, isValid) {
                    return Center(
                      child: customTextField(
                        'Name',
                        onChanged: (value) {
                          context.read<NameValidationCubit>().namevalidation(value);
                        },
                        controller: _nameController,
                        suffixIcon: isValid
                            ? const Icon(Icons.check, color: Colors.green)
                            : null,
                      ),
                    );
                  }),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginView()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Icon(Icons.arrow_forward_outlined,
                              size: 20, color: Colors.red),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: 350, child: elevatedButtonWidget('Sign Up', () {})),
              const SizedBox(
                  height: 50), // Reduced from 120 to fit smaller screens
              Column(
                children: [
                  const Text(
                    'Or sign up with Social account',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      socialButton('assets/google_logo.png'),
                      const SizedBox(width: 30),
                      socialButton('assets/facebook_logo.png'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
