import '../entities/theme_entity.dart';

abstract class ThemeRepository {
  Future<ThemeEntity> getCurrentTheme();
  Future<void> changeTheme(ThemeEntity theme);
  Future<List<ThemeEntity>> getSupportedThemes();
  Future<void> resetToDefault();
}
