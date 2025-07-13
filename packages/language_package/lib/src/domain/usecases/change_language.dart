import '../entities/language_entity.dart';
import '../repositories/language_repository.dart';

class ChangeLanguageUseCase {
  const ChangeLanguageUseCase(this._repository);

  final LanguageRepository _repository;

  Future<void> call(LanguageEntity language) async {
    await _repository.changeLanguage(language);
  }
}
