import 'package:ecommerce/cubit/email_validation_cubit.dart';
import 'package:ecommerce/cubit/name_validation_cubit.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/view/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => EmailValidationCubit()),
        BlocProvider(create: (context) => PasswordVisibilityCubit()),
        BlocProvider(create: (context) => NameValidationCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignUpView(),
      ),
    );
  }
}
