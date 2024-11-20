import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../app_init/injection.dart';
import 'language_bloc.dart';

@immutable
sealed class LanguageState extends Equatable {
  final Locale locale;
  const LanguageState({required this.locale});

  @override
  String toString() => '$locale';
}

class InitialLanguageState extends LanguageState {
  const InitialLanguageState({required super.locale});

  @override
  List<Object?> get props => [];
}

class EnglishLanguageState extends LanguageState {
  const EnglishLanguageState({required super.locale});

  @override
  List<Object?> get props => [];
}

class PortugueseLanguageState extends LanguageState {
  const PortugueseLanguageState({required super.locale});

  @override
  List<Object?> get props => [];
}

class SpanishLanguageState extends LanguageState {
  const SpanishLanguageState({required super.locale});

  @override
  List<Object?> get props => [];
}

extension LanguageBlocX on BuildContext {
  LanguageBloc get language => getIt<LanguageBloc>();
}
