import 'package:shared_preference_package/shared_preference_package.dart';
import '../core/theme_constants.dart';
import '../domain/entities/theme_entity.dart';
import '../domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  const ThemeRepositoryImpl(this._preferenceRepository);

  final PreferenceRepository _preferenceRepository;

  @override
  Future<ThemeEntity> getCurrentTheme() async {
    final savedThemeType = await _preferenceRepository.getTheme();
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
      await _preferenceRepository.saveTheme(theme.type);
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
    await _preferenceRepository.saveTheme(ThemeConstants.defaultThemeType);
  }
}
