import '../repositories/preference_repository.dart';

class SaveLanguageUseCase {
  const SaveLanguageUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<void> call(String language) async {
    if (language.trim().isEmpty) {
      throw ArgumentError('Language cannot be empty');
    }

    await _repository.saveLanguage(language);
  }
}
