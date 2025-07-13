import '../entities/log_entry.dart';

abstract class LogRepository {
  Future<void> logDebug(String message, {String? tag});
  Future<void> logInfo(String message, {String? tag});
  Future<void> logWarning(String message, {String? tag});
  Future<void> logError(String message, {String? tag, StackTrace? stackTrace});
  Future<List<LogEntry>> getLogsByDate(DateTime date);
  Future<void> clearLogs();
  Future<void> clearLogsOlderThan(DateTime date);
}
