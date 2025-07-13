import 'package:shared_preference_package/src/domain/entities/user_preference_entity.dart';

import '../repositories/preference_repository.dart';

class SaveThemeUseCase {
  const SaveThemeUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<void> call(String theme) async {
    if (theme.trim().isEmpty) {
      throw ArgumentError('Theme cannot be empty');
    }

    if (!theme.isValidTheme) {
      throw ArgumentError('Invalid theme. Must be: light, dark, or system');
    }

    await _repository.saveTheme(theme);
  }
}
