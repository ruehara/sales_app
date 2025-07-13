import '../repositories/log_repository.dart';

class LogInfoUseCase {
  const LogInfoUseCase(this._repository);

  final LogRepository _repository;

  Future<void> call(String message, {String? tag}) async {
    await _repository.logInfo(message, tag: tag);
  }
}
