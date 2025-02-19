import 'package:ecommerce/bloc/name/name_validator_bloc.dart';
import 'package:ecommerce/bloc/name/name_validator_event.dart';
import 'package:ecommerce/bloc/name/name_validator_state.dart';
import 'package:ecommerce/bloc/email/email_validator_bloc.dart';
import 'package:ecommerce/bloc/email/email_validator_event.dart';
import 'package:ecommerce/bloc/email/email_validator_state.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/view/auth/login_view.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:ecommerce/widget/button/social_buttons.dart';
import 'package:ecommerce/widget/textfield/textfield.dart';
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
                  BlocBuilder<NameValidationBloc, NameValidationState>(
                    builder: (context, state) {
                      return Center(
                        child: customTextField(
                          'Name',
                          onChanged: (value) {
                            context.read<NameValidationBloc>().add(ValidateName(value));
                          },
                          controller: _nameController,
                          suffixIcon: state is NameValid
                              ? const Icon(Icons.check, color: Colors.green)
                              : (state is NameInvalid
                                  ? const Icon(Icons.close, color: Colors.red)
                                  : null),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<EmailValidationBloc, EmailValidationState>(
                    builder: (context, state) {
                      return Center(
                        child: customTextField(
                          'Email',
                          controller: _emailController,
                          onChanged: (value) {
                            context.read<EmailValidationBloc>().add(ValidateEmail(value));
                          },
                          suffixIcon: state is EmailValid
                              ? const Icon(Icons.check, color: Colors.green)
                              : (state is EmailInvalid
                                  ? const Icon(Icons.close, color: Colors.red)
                                  : null),
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
                            context.read<PasswordVisibilityCubit>().toggleVisibility();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      context.read<NameValidationBloc>().add(ResetNameValidation());
                      context.read<EmailValidationBloc>().add(ResetValidation());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginView()),
                      );
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
              const SizedBox(height: 150),
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
