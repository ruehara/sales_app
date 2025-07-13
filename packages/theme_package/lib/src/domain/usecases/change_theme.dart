import '../entities/theme_entity.dart';
import '../repositories/theme_repository.dart';

class ChangeThemeUseCase {
  const ChangeThemeUseCase(this._repository);

  final ThemeRepository _repository;

  Future<void> call(ThemeEntity theme) async {
    await _repository.changeTheme(theme);
  }
}
