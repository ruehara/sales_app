import '../repositories/preference_repository.dart';
import '../entities/user_preference_entity.dart';

class SaveEmailUseCase {
  const SaveEmailUseCase(this._repository);

  final PreferenceRepository _repository;

  Future<void> call(String email) async {
    if (email.trim().isEmpty) {
      throw ArgumentError('Email cannot be empty');
    }

    if (!email.isValidEmail) {
      throw ArgumentError('Invalid email format');
    }

    await _repository.saveEmail(email);
  }
}
