import '../entities/user_preference_entity.dart';

abstract class PreferenceRepository {
  Future<String?> getEmail();
  Future<void> saveEmail(String email);
  Future<void> clearEmail();

  Future<String?> getTheme();
  Future<void> saveTheme(String theme);
  Future<void> clearTheme();

  Future<String?> getLanguage();
  Future<void> saveLanguage(String language);
  Future<void> clearLanguage();

  Future<UserPreferenceEntity> getAllPreferences();
  Future<void> clearAllPreferences();
}
