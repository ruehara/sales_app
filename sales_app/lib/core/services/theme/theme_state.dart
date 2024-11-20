import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../app_init/injection.dart';
import 'theme_bloc.dart';

@immutable
sealed class ThemeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeState({required this.themeMode});

  @override
  String toString() => '$themeMode';
}

class InitialThemeState extends ThemeState {
  const InitialThemeState({required super.themeMode});

  @override
  List<Object?> get props => [];
}

class LightThemeState extends ThemeState {
  const LightThemeState({required super.themeMode});

  @override
  List<Object?> get props => [];
}

class DarkThemeState extends ThemeState {
  const DarkThemeState({required super.themeMode});

  @override
  List<Object?> get props => [];
}

extension ThemeBlocX on BuildContext {
  ThemeBloc get theme => getIt<ThemeBloc>();
}
