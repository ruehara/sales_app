import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:language_package/language_package.dart';

void main() {
  group('Language Package Tests', () {
    test('LanguageEntity model creation and equality', () {
      const language1 = LanguageEntity(
        name: 'English',
        locale: Locale('en', 'US'),
      );

      const language2 = LanguageEntity(
        name: 'English',
        locale: Locale('en', 'US'),
      );

      expect(language1, equals(language2));
      expect(language1.props, equals(language2.props));
    });

    test('LanguageEntity returns correct language from code', () {
      final language = LanguageEntity.fromCode('en');
      expect(language.locale.languageCode, equals('en'));
      expect(language.name, equals('English'));
    });

    test('LanguageEntity returns fallback for unknown code', () {
      final fallbackLanguage = LanguageEntity.fromCode('unknown');
      expect(fallbackLanguage.locale.languageCode, equals('pt'));
    });

    test('LanguageEntity returns correct supported languages', () {
      expect(LanguageEntity.supportedLanguages.length, equals(3));
      expect(
        LanguageEntity.supportedLanguages.first.locale.languageCode,
        equals('en'),
      );
    });

    test('LanguageConstants returns correct default language', () {
      final defaultLanguage = LanguageConstants.getLanguageByCode('pt');
      expect(defaultLanguage.locale.languageCode, equals('pt'));
      expect(defaultLanguage.name, equals('Português'));
    });
  });
}
