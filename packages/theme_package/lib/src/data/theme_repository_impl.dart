import 'package:shared_preferences/shared_preferences.dart';
import '../core/theme_constants.dart';
import '../domain/entities/theme_entity.dart';
import '../domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  const ThemeRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  static const String _themeKey = 'user_theme';

  @override
  Future<ThemeEntity> getCurrentTheme() async {
    final savedThemeType = _prefs.getString(_themeKey);
    if (savedThemeType != null &&
        savedThemeType.isNotEmpty &&
        ThemeConstants.isSupported(savedThemeType)) {
      return ThemeEntity.fromType(savedThemeType);
    }
    return ThemeEntity.fromType(ThemeConstants.defaultThemeType);
  }

  @override
  Future<void> changeTheme(ThemeEntity theme) async {
    if (ThemeConstants.isSupported(theme.type)) {
      await _prefs.setString(_themeKey, theme.type);
    } else {
      throw ArgumentError('Unsupported theme: ${theme.type}');
    }
  }

  @override
  Future<List<ThemeEntity>> getSupportedThemes() async {
    return ThemeConstants.supportedThemes;
  }

  @override
  Future<void> resetToDefault() async {
    await _prefs.setString(_themeKey, ThemeConstants.defaultThemeType);
  }
}
