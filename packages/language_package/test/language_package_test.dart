import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:language_package/language_package.dart';

void main() {
  group('Language Package Tests', () {
    test('LanguageEntity model creation and equality', () {
      const language1 = LanguageEntity(
        code: 'en',
        name: 'English',
        locale: Locale('en', 'US'),
        flag: '🇺🇸',
      );

      const language2 = LanguageEntity(
        code: 'en',
        name: 'English',
        locale: Locale('en', 'US'),
        flag: '🇺🇸',
      );

      expect(language1, equals(language2));
      expect(language1.props, equals(language2.props));
    });

    test('LanguageEntity returns correct language from code', () {
      final language = LanguageEntity.fromCode('en');
      expect(language.code, equals('en'));
      expect(language.name, equals('English'));
    });

    test('LanguageEntity returns fallback for unknown code', () {
      final fallbackLanguage = LanguageEntity.fromCode('unknown');
      expect(fallbackLanguage.code, equals('en'));
    });

    test('LanguageEntity returns correct supported languages', () {
      expect(LanguageEntity.supportedLanguages.length, equals(3));
      expect(LanguageEntity.supportedLanguages.first.code, equals('en'));
    });

    test('LanguageConstants returns correct default language', () {
      final defaultLanguage = LanguageConstants.getLanguageByCode('pt');
      expect(defaultLanguage.code, equals('pt'));
      expect(defaultLanguage.name, equals('Português'));
    });
  });
}
