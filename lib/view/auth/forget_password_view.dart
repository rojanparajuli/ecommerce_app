import 'package:ecommerce/bloc/email/email_validator_bloc.dart';
import 'package:ecommerce/bloc/email/email_validator_event.dart';
import 'package:ecommerce/bloc/email/email_validator_state.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:ecommerce/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

TextEditingController _emailController = TextEditingController();

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.read<EmailValidationBloc>().add(ResetValidation());
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
                'Forget Password',
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Please ,enter your email address. You will receive a link to create a new password via email.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                            ? const Icon(Icons.check, color: Colors.green)
                            : (state is EmailInvalid
                                ? const Icon(Icons.close, color: Colors.red)
                                : null),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 60),
                SizedBox(
                    width: 350, child: elevatedButtonWidget('Send', () {})),
                const SizedBox(height: 220),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
