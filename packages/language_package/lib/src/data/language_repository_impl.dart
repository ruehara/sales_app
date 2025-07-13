import 'package:shared_preference_package/shared_preference_package.dart';
import '../../language_package.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  const LanguageRepositoryImpl(this._preferenceRepository);

  final PreferenceRepository _preferenceRepository;

  @override
  Future<LanguageEntity> getCurrentLanguage() async {
    final savedLanguageCode = await _preferenceRepository.getLanguage();
    if (savedLanguageCode != null &&
        savedLanguageCode.isNotEmpty &&
        LanguageConstants.isSupported(savedLanguageCode)) {
      return LanguageEntity.fromCode(savedLanguageCode);
    }
    return LanguageEntity.fromCode(LanguageConstants.defaultLanguageCode);
  }

  @override
  Future<void> changeLanguage(LanguageEntity language) async {
    if (LanguageConstants.isSupported(language.code)) {
      await _preferenceRepository.saveLanguage(language.code);
    } else {
      throw ArgumentError('Unsupported language: ${language.code}');
    }
  }

  @override
  Future<List<LanguageEntity>> getSupportedLanguages() async {
    return LanguageConstants.supportedLanguages;
  }

  @override
  Future<void> resetToDefault() async {
    await _preferenceRepository.saveLanguage(
      LanguageConstants.defaultLanguageCode,
    );
  }
}
