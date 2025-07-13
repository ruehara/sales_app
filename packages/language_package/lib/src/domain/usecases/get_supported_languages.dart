import '../entities/language_entity.dart';
import '../repositories/language_repository.dart';

class GetSupportedLanguagesUseCase {
  const GetSupportedLanguagesUseCase(this._repository);

  final LanguageRepository _repository;

  Future<List<LanguageEntity>> call() async {
    return await _repository.getSupportedLanguages();
  }
}
