import 'package:shared_preferences/shared_preferences.dart';
import '../../core/preference_constants.dart';
import '../../core/preference_exceptions.dart';
import '../../domain/entities/user_preference_entity.dart';
import '../../domain/repositories/preference_repository.dart';

class PreferenceRepositoryImpl implements PreferenceRepository {
  const PreferenceRepositoryImpl(this._prefs);

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
  Future<void> saveEmail(String email) async {
    try {
      final success = await _prefs.setString(
        PreferenceConstants.emailKey,
        email,
      );
      if (!success) {
        throw CacheException('Failed to save email');
      }
    } catch (e) {
      throw CacheException('Failed to save email: $e');
    }
  }

  @override
  Future<void> clearEmail() async {
    try {
      await _prefs.remove(PreferenceConstants.emailKey);
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
  Future<void> saveTheme(String theme) async {
    try {
      final success = await _prefs.setString(
        PreferenceConstants.themeKey,
        theme,
      );
      if (!success) {
        throw CacheException('Failed to save theme');
      }
    } catch (e) {
      throw CacheException('Failed to save theme: $e');
    }
  }

  @override
  Future<void> clearTheme() async {
    try {
      await _prefs.remove(PreferenceConstants.themeKey);
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
  Future<void> saveLanguage(String language) async {
    try {
      final success = await _prefs.setString(
        PreferenceConstants.languageKey,
        language,
      );
      if (!success) {
        throw CacheException('Failed to save language');
      }
    } catch (e) {
      throw CacheException('Failed to save language: $e');
    }
  }

  @override
  Future<void> clearLanguage() async {
    try {
      await _prefs.remove(PreferenceConstants.languageKey);
    } catch (e) {
      throw CacheException('Failed to clear language: $e');
    }
  }

  @override
  Future<UserPreferenceEntity> getAllPreferences() async {
    try {
      final email = await getEmail();
      final theme = await getTheme();
      final language = await getLanguage();

      return UserPreferenceEntity(
        email: email,
        theme: theme,
        language: language,
      );
    } catch (e) {
      throw CacheException('Failed to get all preferences: $e');
    }
  }

  @override
  Future<void> clearAllPreferences() async {
    try {
      await Future.wait([clearEmail(), clearTheme(), clearLanguage()]);
    } catch (e) {
      throw CacheException('Failed to clear all preferences: $e');
    }
  }
}
