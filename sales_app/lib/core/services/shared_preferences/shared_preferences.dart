import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../shared/utils/constants.dart';
import '../../app_init/injection.dart';
import '../language/language_bloc.dart';
import '../language/language_events.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_events.dart';

abstract class AppSharedPreferences {
  String getEmail();
  void setEmail(String email);
  void clearEmail();

  Locale getLocale();
  void setLocale(Locale locale);
  void clearLocale();

  ThemeMode getThemeMode();
  void setThemeMode(String theme);
  void clearTheme();

  void clearAll();
}

class SharedPrefsService extends AppSharedPreferences {
  SharedPreferences get sharedPrefs => getIt<SharedPreferences>();

  @override
  Locale getLocale() {
    return Locale(sharedPrefs.getString(localeVar) ?? 'pt');
  }

  @override
  ThemeMode getThemeMode() {
    return sharedPrefs.getString(themeVar) == 'dark'
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  @override
  String getEmail() {
    return sharedPrefs.getString(emailVar) ?? '';
  }

  @override
  void clearAll() {
    clearLocale();
    clearTheme();
    clearEmail();
  }

  @override
  void setLocale(Locale locale) {
    sharedPrefs.setString(localeVar, locale.languageCode);
  }

  @override
  void setThemeMode(String theme) {
    sharedPrefs.setString(themeVar, theme);
  }

  @override
  void setEmail(String email) {
    sharedPrefs.setString(emailVar, email);
  }

  @override
  void clearLocale() {
    sharedPrefs.remove(localeVar);
    getIt<LanguageBloc>().add(LanguageChangeEvent());
  }

  @override
  void clearTheme() {
    sharedPrefs.remove(themeVar);
    getIt<ThemeBloc>().add(ThemeChangeEvent());
  }

  @override
  void clearEmail() {
    sharedPrefs.remove(emailVar);
  }
}
