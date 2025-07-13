import '../repositories/log_repository.dart';

class LogWarningUseCase {
  const LogWarningUseCase(this._repository);

  final LogRepository _repository;

  Future<void> call(String message, {String? tag}) async {
    await _repository.logWarning(message, tag: tag);
  }
}
