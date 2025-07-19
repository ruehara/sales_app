import 'package:shared_preferences/shared_preferences.dart';
import '../../language_package.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  const LanguageRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  static const String _languageKey = 'user_language';

  @override
  Future<LanguageEntity> getCurrentLanguage() async {
    final savedLanguageCode = _prefs.getString(_languageKey);
    if (savedLanguageCode != null &&
        savedLanguageCode.isNotEmpty &&
        LanguageConstants.isSupported(savedLanguageCode)) {
      return LanguageEntity.fromCode(savedLanguageCode);
    }
    return LanguageEntity.fromCode(LanguageConstants.defaultLanguageCode);
  }

  @override
  Future<void> changeLanguage(LanguageEntity language) async {
    if (LanguageConstants.isSupported(language.locale.languageCode)) {
      await _prefs.setString(_languageKey, language.locale.languageCode);
    } else {
      throw ArgumentError(
        'Unsupported language: ${language.locale.languageCode}',
      );
    }
  }

  @override
  Future<List<LanguageEntity>> getSupportedLanguages() async {
    return LanguageConstants.supportedLanguages;
  }

  @override
  Future<void> resetToDefault() async {
    await _prefs.setString(_languageKey, LanguageConstants.defaultLanguageCode);
  }
}
