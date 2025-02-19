import 'package:equatable/equatable.dart';

abstract class NameValidationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NameValidationInitial extends NameValidationState {}

class NameValid extends NameValidationState {}

class NameInvalid extends NameValidationState {}