import 'dart:ui';
import '../../../generated/app_localizations.dart';
import '../domain/entities/language_entity.dart';

class LanguageConstants {
  static const String defaultLanguageCode = 'pt';

  /// Returns supported languages based on AppLocalizations.supportedLocales
  static List<LanguageEntity> get supportedLanguages =>
      LanguageEntity.supportedLanguages;

  /// Returns supported locales from AppLocalizations
  static List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  static LanguageEntity getLanguageByCode(String code) {
    return LanguageEntity.fromCode(code);
  }

  static LanguageEntity getLanguageByLocale(Locale locale) {
    return LanguageEntity.fromLocale(locale);
  }

  /// Validates if a language code is supported
  static bool isSupported(String code) {
    return AppLocalizations.supportedLocales.any(
      (locale) => locale.languageCode == code,
    );
  }
}
