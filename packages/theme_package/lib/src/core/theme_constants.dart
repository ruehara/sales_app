import '../domain/entities/theme_entity.dart';

class ThemeConstants {
  static const String defaultThemeType = 'system';

  /// Returns supported themes
  static List<ThemeEntity> get supportedThemes => ThemeEntity.supportedThemes;

  static ThemeEntity getThemeByType(String type) {
    return ThemeEntity.fromType(type);
  }

  /// Validates if a theme type is supported
  static bool isSupported(String type) {
    return supportedThemes.any((theme) => theme.type == type);
  }
}
