import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../generated/app_localizations.dart';

class LanguageEntity extends Equatable {
  const LanguageEntity({required this.name, required this.locale});

  final String name;
  final Locale locale;

  static List<LanguageEntity> get supportedLanguages {
    return AppLocalizations.supportedLocales.map((locale) {
      return _fromLocale(locale);
    }).toList();
  }

  static LanguageEntity fromCode(String code) {
    final locale = AppLocalizations.supportedLocales.firstWhere(
      (l) => l.languageCode == code,
      orElse: () => const Locale('pt', 'BR'), // Default fallback
    );
    return _fromLocale(locale);
  }

  static LanguageEntity fromLocale(Locale locale) {
    // Verify if locale is supported
    final supportedLocale = AppLocalizations.supportedLocales.firstWhere(
      (l) => l.languageCode == locale.languageCode,
      orElse: () => const Locale('pt', 'BR'), // Default fallback
    );
    return _fromLocale(supportedLocale);
  }

  static LanguageEntity _fromLocale(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return const LanguageEntity(
          name: 'English',
          locale: Locale('en', 'US'),
        );
      case 'es':
        return const LanguageEntity(
          name: 'Español',
          locale: Locale('es', 'ES'),
        );
      case 'pt':
        return const LanguageEntity(
          name: 'Português',
          locale: Locale('pt', 'BR'),
        );
      default:
        return const LanguageEntity(
          name: 'Português',
          locale: Locale('pt', 'BR'),
        );
    }
  }

  @override
  List<Object?> get props => [name, locale];
}

extension LanguageEntityX on LanguageEntity {
  /// Returns the display name for the current language in its own language
  String get nativeName => name;

  /// Returns localized language name using AppLocalizations
  String getLocalizedName(AppLocalizations l10n) {
    switch (locale.languageCode) {
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
