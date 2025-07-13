import '../../domain/entities/log_entry.dart';
import '../../domain/repositories/log_repository.dart';
import '../datasources/local_log_datasource.dart';

class LogRepositoryImpl implements LogRepository {
  const LogRepositoryImpl({required this.localLogDataSource});

  final LocalLogDataSource localLogDataSource;

  @override
  Future<void> logDebug(String message, {String? tag}) async {
    final logEntry = LogEntry(
      level: LogLevel.debug,
      message: message,
      timestamp: DateTime.now(),
      tag: tag,
    );
    await localLogDataSource.writeLog(logEntry);
  }

  @override
  Future<void> logInfo(String message, {String? tag}) async {
    final logEntry = LogEntry(
      level: LogLevel.info,
      message: message,
      timestamp: DateTime.now(),
      tag: tag,
    );
    await localLogDataSource.writeLog(logEntry);
  }

  @override
  Future<void> logWarning(String message, {String? tag}) async {
    final logEntry = LogEntry(
      level: LogLevel.warning,
      message: message,
      timestamp: DateTime.now(),
      tag: tag,
    );
    await localLogDataSource.writeLog(logEntry);
  }

  @override
  Future<void> logError(
    String message, {
    String? tag,
    StackTrace? stackTrace,
  }) async {
    final logEntry = LogEntry(
      level: LogLevel.error,
      message: message,
      timestamp: DateTime.now(),
      tag: tag,
      stackTrace: stackTrace,
    );
    await localLogDataSource.writeLog(logEntry);
  }

  @override
  Future<List<LogEntry>> getLogsByDate(DateTime date) async {
    return await localLogDataSource.readLogsByDate(date);
  }

  @override
  Future<void> clearLogs() async {
    await localLogDataSource.clearLogs();
  }

  @override
  Future<void> clearLogsOlderThan(DateTime date) async {
    await localLogDataSource.clearLogsOlderThan(date);
  }
}
