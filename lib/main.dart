import 'package:ecommerce/bloc/email/email_validator_bloc.dart';
import 'package:ecommerce/bloc/name/name_validator_bloc.dart';
import 'package:ecommerce/bloc/navigation/nav_bloc.dart';
import 'package:ecommerce/cubit/buttons_toggle_cubit.dart';
import 'package:ecommerce/cubit/navigation_cubit.dart';
import 'package:ecommerce/cubit/password_toggle_cubit.dart';
import 'package:ecommerce/view/auth/sign_up_view.dart';
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
        BlocProvider(create: (context) => EmailValidationBloc()),
        BlocProvider(create: (context) => PasswordVisibilityCubit()),
        BlocProvider(create: (context) => NameValidationBloc()),
        BlocProvider(create: (context) => ButtonsToggleCubit()),
        BlocProvider(create: (context) => OrderNavigationCubit()),
        BlocProvider(create: (context) => NavigationBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignUpView(),
      ),
    );
  }
}
