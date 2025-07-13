import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../generated/app_localizations.dart';

class LanguageEntity extends Equatable {
  const LanguageEntity({
    required this.code,
    required this.name,
    required this.locale,
    required this.flag,
  });

  final String code;
  final String name;
  final Locale locale;
  final String flag;

  static List<LanguageEntity> get supportedLanguages {
    return AppLocalizations.supportedLocales.map((locale) {
      return _fromLocale(locale);
    }).toList();
  }

  static LanguageEntity fromCode(String code) {
    final locale = AppLocalizations.supportedLocales.firstWhere(
      (l) => l.languageCode == code,
      orElse: () => const Locale('pt'), // Default fallback
    );
    return _fromLocale(locale);
  }

  static LanguageEntity fromLocale(Locale locale) {
    // Verify if locale is supported
    final supportedLocale = AppLocalizations.supportedLocales.firstWhere(
      (l) => l.languageCode == locale.languageCode,
      orElse: () => const Locale('pt'), // Default fallback
    );
    return _fromLocale(supportedLocale);
  }

  static LanguageEntity _fromLocale(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return const LanguageEntity(
          code: 'en',
          name: 'English',
          locale: Locale('en', 'US'),
          flag: '🇺🇸',
        );
      case 'es':
        return const LanguageEntity(
          code: 'es',
          name: 'Español',
          locale: Locale('es', 'ES'),
          flag: '🇪🇸',
        );
      case 'pt':
        return const LanguageEntity(
          code: 'pt',
          name: 'Português',
          locale: Locale('pt', 'BR'),
          flag: '🇧🇷',
        );
      default:
        return const LanguageEntity(
          code: 'pt',
          name: 'Português',
          locale: Locale('pt', 'BR'),
          flag: '🇧🇷',
        );
    }
  }

  @override
  List<Object?> get props => [code, name, locale, flag];
}

extension LanguageEntityX on LanguageEntity {
  /// Returns the display name for the current language in its own language
  String get nativeName => name;

  /// Returns true if this is the default language
  bool get isDefault =>
      code == 'pt'; // Use constant instead of LanguageConstants

  /// Returns localized language name using AppLocalizations
  String getLocalizedName(AppLocalizations l10n) {
    switch (code) {
      case 'en':
        return l10n.english;
      case 'es':
        return l10n.spanish;
      case 'pt':
        return l10n.portuguese;
      default:
        return name;
    }
  }
}
