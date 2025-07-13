import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preference_package/shared_preference_package.dart';

void main() {
  group('SharedPreference Package Tests', () {
    test('UserPreferenceEntity creation and equality', () {
      const preference1 = UserPreferenceEntity(
        email: 'test@example.com',
        theme: 'dark',
        language: 'en',
      );

      const preference2 = UserPreferenceEntity(
        email: 'test@example.com',
        theme: 'dark',
        language: 'en',
      );

      expect(preference1, equals(preference2));
      expect(preference1.props, equals(preference2.props));
    });

    test('UserPreferenceEntity copyWith works correctly', () {
      const original = UserPreferenceEntity(
        email: 'test@example.com',
        theme: 'dark',
        language: 'en',
      );

      final updated = original.copyWith(theme: 'light');

      expect(updated.email, equals('test@example.com'));
      expect(updated.theme, equals('light'));
      expect(updated.language, equals('en'));
    });

    test('PreferenceConstants are defined correctly', () {
      expect(PreferenceConstants.emailKey, isNotEmpty);
      expect(PreferenceConstants.themeKey, isNotEmpty);
      expect(PreferenceConstants.languageKey, isNotEmpty);
      expect(PreferenceConstants.defaultTheme, isNotEmpty);
      expect(PreferenceConstants.defaultLanguage, isNotEmpty);
    });

    test('Exception types work correctly', () {
      const cacheException = CacheException('Cache error');
      const validationException = ValidationException('Validation error');

      expect(cacheException.message, equals('Cache error'));
      expect(validationException.message, equals('Validation error'));
      expect(cacheException.toString(), contains('CacheException'));
      expect(validationException.toString(), contains('ValidationException'));
    });
  });
}
