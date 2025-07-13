import '../repositories/preference_repository.dart';

class GetThemeUseCase {
  const GetThemeUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<String?> call() async {
    return await _repository.getTheme();
  }
}
