import '../repositories/log_repository.dart';

class LogErrorUseCase {
  const LogErrorUseCase(this._repository);

  final LogRepository _repository;

  Future<void> call(
    String message, {
    String? tag,
    StackTrace? stackTrace,
  }) async {
    await _repository.logError(message, tag: tag, stackTrace: stackTrace);
  }
}
