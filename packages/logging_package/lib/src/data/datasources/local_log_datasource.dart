import '../../../logging_package.dart';

abstract class LocalLogDataSource {
  Future<void> writeLog(LogEntry logEntry);
  Future<List<LogEntry>> readLogsByDate(DateTime date);
  Future<void> clearLogs();
  Future<void> clearLogsOlderThan(DateTime date);
}
