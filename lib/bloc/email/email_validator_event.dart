import 'package:equatable/equatable.dart';

abstract class EmailValidationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ValidateEmail extends EmailValidationEvent {
  final String email;

  ValidateEmail(this.email);

  @override
  List<Object?> get props => [email];
}

class ValidateLogin extends EmailValidationEvent {
  final String email;

  ValidateLogin(this.email);

  @override
  List<Object?> get props => [email];
}

class ResetValidation extends EmailValidationEvent {}
