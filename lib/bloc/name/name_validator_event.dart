import 'package:equatable/equatable.dart';

abstract class NameValidationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ValidateName extends NameValidationEvent {
  final String name;

  ValidateName(this.name);

  @override
  List<Object?> get props => [name];
}

class ResetNameValidation extends NameValidationEvent {}
