import '../repositories/preference_repository.dart';

class GetLanguageUseCase {
  const GetLanguageUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<String?> call() async {
    return await _repository.getLanguage();
  }
}
