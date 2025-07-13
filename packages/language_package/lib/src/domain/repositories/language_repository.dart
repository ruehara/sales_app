import '../entities/language_entity.dart';

abstract class LanguageRepository {
  Future<LanguageEntity> getCurrentLanguage();
  Future<void> changeLanguage(LanguageEntity language);
  Future<List<LanguageEntity>> getSupportedLanguages();
  Future<void> resetToDefault();
}
