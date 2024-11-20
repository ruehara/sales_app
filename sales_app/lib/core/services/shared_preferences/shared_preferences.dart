import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_init/injection.dart';
import '../language/language_bloc.dart';
import '../language/language_events.dart';

abstract class AppSharedPreferences {
  Future<String> getEmail();
  void setEmail(String email);
  void clearEmail();

  Future<Locale> getLocale();
  void setLocale(Locale locale);
  void clearLocale();

  ThemeMode getThemeMode();
  void setThemeMode(String theme);
  void clearTheme();

  void clearAll();
}

class SharedPrefsService extends AppSharedPreferences {
  SharedPreferences? _prefs;

  SharedPrefsService._internal();

  factory SharedPrefsService() {
    return SharedPrefsService._internal();
  }

  Future<SharedPreferences?> get _initializePrefs async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs;
  }

  Future<void> setString(String key, String? value) async {
    var pref = await _initializePrefs;
    pref?.setString(key, value ?? '');
  }

  @override
  Future<String> getEmail() async {
    var pref = await _initializePrefs;
    return pref?.getString('email') ?? '';
  }

  @override
  void setEmail(String email) async {
    var pref = await _initializePrefs;
    pref?.setString('email', email);
  }

  @override
  void clearEmail() async {
    var pref = await _initializePrefs;
    pref?.remove('email');
  }

  @override
  Future<Locale> getLocale() async {
    var pref = await _initializePrefs;
    return Locale(pref?.getString('locale') ?? 'pt');
  }

  @override
  void setLocale(Locale locale) async {
    var pref = await _initializePrefs;
    pref?.setString('locale', locale.languageCode);
  }

  @override
  void clearLocale() async {
    var pref = await _initializePrefs;
    pref?.remove('locale');
    getIt<LanguageBloc>().add(LanguageChangeEvent());
  }

  @override
  ThemeMode getThemeMode() {
    // TODO: implement getThemeMode
    throw UnimplementedError();
  }

  @override
  void setThemeMode(String theme) {
    // TODO: implement setThemeMode
  }

  @override
  void clearTheme() {
    // TODO: implement removeTheme
  }

  @override
  void clearAll() {
    clearLocale();
    clearTheme();
    clearEmail();
  }
}
