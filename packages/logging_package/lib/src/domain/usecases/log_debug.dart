import '../repositories/log_repository.dart';

class LogDebugUseCase {
  const LogDebugUseCase(this._repository);

  final LogRepository _repository;

  Future<void> call(String message, {String? tag}) async {
    await _repository.logDebug(message, tag: tag);
  }
}
