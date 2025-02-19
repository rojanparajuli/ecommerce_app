import 'package:equatable/equatable.dart';

abstract class EmailValidationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EmailValidationInitial extends EmailValidationState {}

class EmailValid extends EmailValidationState {}

class EmailInvalid extends EmailValidationState {}
