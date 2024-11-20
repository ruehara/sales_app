import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
abstract class LanguageEvent extends Equatable {
  const LanguageEvent();
}

class LanguageChangeEvent extends LanguageEvent {
  @override
  List<Object> get props => [];
}

class PortugueseChangeEvent extends LanguageEvent {
  @override
  List<Object> get props => [];
}

class EnglishChangeEvent extends LanguageEvent {
  @override
  List<Object> get props => [];
}

class SpanishChangeEvent extends LanguageEvent {
  @override
  List<Object> get props => [];
}
