import '../repositories/preference_repository.dart';

class ClearPreferencesUseCase {
  const ClearPreferencesUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<void> call() async {
    await _repository.clearAllPreferences();
  }
}
