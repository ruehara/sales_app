import '../repositories/theme_repository.dart';

class ResetThemeUseCase {
  const ResetThemeUseCase(this._repository);

  final ThemeRepository _repository;

  Future<void> call() async {
    await _repository.resetToDefault();
  }
}
