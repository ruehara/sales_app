// import 'package:flutter_test/flutter_test.dart';
// import 'package:theme_package/theme_package.dart';

// void main() {
//   group('Theme Package Tests', () {
//     test('ThemeEntity returns correct theme from type', () {
//       final theme = ThemeEntity.fromType(ThemeType.dark);
//       expect(theme.type, equals(ThemeType.dark));
//       expect(theme.name, equals('Dark'));
//     });

//     test('ThemeEntity returns correct theme from string', () {
//       final theme = ThemeEntity.fromString('light');
//       expect(theme.type, equals(ThemeType.light));
//       expect(theme.name, equals('Light'));
//     });

//     test('ThemeEntity returns fallback for unknown string', () {
//       final fallbackTheme = ThemeEntity.fromString('unknown');
//       expect(fallbackTheme.type, equals(ThemeType.system));
//     });

//     test('ThemeEntity returns correct supported themes', () {
//       expect(ThemeEntity.supportedThemes.length, equals(3));
//       expect(ThemeEntity.supportedThemes.first.type, equals(ThemeType.light));
//     });
//   });
// }
