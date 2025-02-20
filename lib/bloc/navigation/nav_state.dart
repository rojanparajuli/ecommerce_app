import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class NavigationState extends Equatable {
  final int selectedIndex;
  final Widget selectedScreen;

  const NavigationState(this.selectedIndex, this.selectedScreen);

  @override
  List<Object> get props => [selectedIndex, selectedScreen];
}
