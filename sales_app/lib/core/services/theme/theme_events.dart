import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChangeEvent extends ThemeEvent {
  @override
  List<Object> get props => [];
}
