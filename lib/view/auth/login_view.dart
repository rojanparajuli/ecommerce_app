import 'package:ecommerce/bloc/email/email_validator_bloc.dart';
import 'package:ecommerce/bloc/email/email_validator_event.dart';
import 'package:ecommerce/bloc/email/email_validator_state.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/view/auth/forget_password_view.dart';
import 'package:ecommerce/view/profile/profile_view.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:ecommerce/widget/button/social_buttons.dart';
import 'package:ecommerce/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                    GestureDetector(
                      onTap: () {
                        context
                            .read<EmailValidationBloc>()
                            .add(ResetValidation());

                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back_ios_new, size: 24),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(19.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BlocBuilder<EmailValidationBloc, EmailValidationState>(
                          builder: (context, state) {
                            return Center(
                              child: customTextField(
                                'Email',
                                controller: _emailController,
                                onChanged: (value) {
                                  context
                                      .read<EmailValidationBloc>()
                                      .add(ValidateEmail(value));
                                },
                                suffixIcon: state is EmailValid
                                    ? const Icon(Icons.check,
                                        color: Colors.green)
                                    : (state is EmailInvalid
                                        ? const Icon(Icons.close,
                                            color: Colors.red)
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
                            context
                                .read<EmailValidationBloc>()
                                .add(ResetValidation());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordView()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                            width: 350,
                            child: elevatedButtonWidget('Login', () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileView()));
                            })),
                        const SizedBox(height: 220),
                        Column(
                          children: [
                            const Text(
                              'Or sign up with Social account',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
