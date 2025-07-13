import '../entities/theme_entity.dart';
import '../repositories/theme_repository.dart';

class GetCurrentThemeUseCase {
  const GetCurrentThemeUseCase(this._repository);

  final ThemeRepository _repository;

  Future<ThemeEntity> call() async {
    return await _repository.getCurrentTheme();
  }
}
