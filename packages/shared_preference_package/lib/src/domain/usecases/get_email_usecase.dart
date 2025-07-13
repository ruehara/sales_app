import '../repositories/preference_repository.dart';

class GetEmailUseCase {
  const GetEmailUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<String?> call() async {
    return await _repository.getEmail();
  }
}
