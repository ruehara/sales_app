import '../repositories/language_repository.dart';

class ResetLanguageUseCase {
  const ResetLanguageUseCase(this._repository);

  final LanguageRepository _repository;

  Future<void> call() async {
    await _repository.resetToDefault();
  }
}
