import 'package:shared_preferences/shared_preferences.dart';
import '../../core/preference_constants.dart';
import '../../core/preference_exceptions.dart';

abstract class PreferenceLocalDataSource {
  Future<String?> getEmail();
  Future<bool> saveEmail(String email);
  Future<bool> clearEmail();

  Future<String?> getTheme();
  Future<bool> saveTheme(String theme);
  Future<bool> clearTheme();

  Future<String?> getLanguage();
  Future<bool> saveLanguage(String language);
  Future<bool> clearLanguage();

  Future<bool> clearAllPreferences();
}

class PreferenceLocalDataSourceImpl implements PreferenceLocalDataSource {
  const PreferenceLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<String?> getEmail() async {
    try {
      return _prefs.getString(PreferenceConstants.emailKey);
    } catch (e) {
      throw CacheException('Failed to get email: $e');
    }
  }

  @override
  Future<bool> saveEmail(String email) async {
    try {
      return await _prefs.setString(PreferenceConstants.emailKey, email);
    } catch (e) {
      throw CacheException('Failed to save email: $e');
    }
  }

  @override
  Future<bool> clearEmail() async {
    try {
      return await _prefs.remove(PreferenceConstants.emailKey);
    } catch (e) {
      throw CacheException('Failed to clear email: $e');
    }
  }

  @override
  Future<String?> getTheme() async {
    try {
      return _prefs.getString(PreferenceConstants.themeKey);
    } catch (e) {
      throw CacheException('Failed to get theme: $e');
    }
  }

  @override
  Future<bool> saveTheme(String theme) async {
    try {
      return await _prefs.setString(PreferenceConstants.themeKey, theme);
    } catch (e) {
      throw CacheException('Failed to save theme: $e');
    }
  }

  @override
  Future<bool> clearTheme() async {
    try {
      return await _prefs.remove(PreferenceConstants.themeKey);
    } catch (e) {
      throw CacheException('Failed to clear theme: $e');
    }
  }

  @override
  Future<String?> getLanguage() async {
    try {
      return _prefs.getString(PreferenceConstants.languageKey);
    } catch (e) {
      throw CacheException('Failed to get language: $e');
    }
  }

  @override
  Future<bool> saveLanguage(String language) async {
    try {
      return await _prefs.setString(PreferenceConstants.languageKey, language);
    } catch (e) {
      throw CacheException('Failed to save language: $e');
    }
  }

  @override
  Future<bool> clearLanguage() async {
    try {
      return await _prefs.remove(PreferenceConstants.languageKey);
    } catch (e) {
      throw CacheException('Failed to clear language: $e');
    }
  }

  @override
  Future<bool> clearAllPreferences() async {
    try {
      final futures = await Future.wait([
        clearEmail(),
        clearTheme(),
        clearLanguage(),
      ]);
      return futures.every((result) => result);
    } catch (e) {
      throw CacheException('Failed to clear all preferences: $e');
    }
  }
}
