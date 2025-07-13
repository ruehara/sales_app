import '../entities/theme_entity.dart';
import '../repositories/theme_repository.dart';

class GetSupportedThemesUseCase {
  const GetSupportedThemesUseCase(this._repository);

  final ThemeRepository _repository;

  Future<List<ThemeEntity>> call() async {
    return await _repository.getSupportedThemes();
  }
}
