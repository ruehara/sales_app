import '../entities/language_entity.dart';
import '../repositories/language_repository.dart';

class GetCurrentLanguageUseCase {
  const GetCurrentLanguageUseCase(this._repository);

  final LanguageRepository _repository;

  Future<LanguageEntity> call() async {
    return await _repository.getCurrentLanguage();
  }
}
