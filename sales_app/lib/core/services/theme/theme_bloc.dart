import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/core/app_init/injection.dart';
import '../shared_preferences/shared_preferences.dart';
import 'theme_events.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(InitialThemeState(
            themeMode: getIt<AppSharedPreferences>().getThemeMode())) {
    on<ThemeChangeEvent>((event, emit) async {
      var themeMode = getIt<AppSharedPreferences>().getThemeMode();
      themeMode == ThemeMode.dark
          ? emit(const LightThemeState(themeMode: ThemeMode.light))
          : emit(const DarkThemeState(themeMode: ThemeMode.dark));

      getIt<AppSharedPreferences>()
          .setThemeMode(themeMode == ThemeMode.dark ? 'light' : 'dark');
    });
  }
}
