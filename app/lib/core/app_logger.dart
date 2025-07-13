import 'package:get_it/get_it.dart';
import 'package:logging_package/logging_package.dart';

class AppLogger {
  static final _logRepository = GetIt.instance<LogRepository>();

  /// Log debug messages (development only)
  static Future<void> debug(String message, {String? tag}) async {
    try {
      await _logRepository.logDebug(message, tag: tag ?? 'APP');
    } catch (e) {
      // Silently fail to avoid breaking app flow
      print('Failed to log debug: $e');
    }
  }

  /// Log info messages
  static Future<void> info(String message, {String? tag}) async {
    try {
      await _logRepository.logInfo(message, tag: tag ?? 'APP');
    } catch (e) {
      print('Failed to log info: $e');
    }
  }

  /// Log warning messages
  static Future<void> warning(String message, {String? tag}) async {
    try {
      await _logRepository.logWarning(message, tag: tag ?? 'APP');
    } catch (e) {
      print('Failed to log warning: $e');
    }
  }

  /// Log error messages with optional stack trace
  static Future<void> error(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) async {
    try {
      final errorMessage = error != null ? '$message: $error' : message;
      await _logRepository.logError(
        errorMessage,
        tag: tag ?? 'APP',
        stackTrace: stackTrace,
      );
    } catch (e) {
      print('Failed to log error: $e');
    }
  }

  /// Log network requests
  static Future<void> network(
    String method,
    String url, {
    int? statusCode,
    String? response,
  }) async {
    final message = '$method $url${statusCode != null ? ' - $statusCode' : ''}';
    await info(message, tag: 'NETWORK');

    if (response != null && response.isNotEmpty) {
      await debug('Response: $response', tag: 'NETWORK');
    }
  }

  /// Log user actions
  static Future<void> userAction(
    String action, {
    Map<String, dynamic>? data,
  }) async {
    final message = data != null ? '$action - Data: $data' : action;
    await info(message, tag: 'USER_ACTION');
  }

  /// Log performance metrics
  static Future<void> performance(String operation, Duration duration) async {
    final message = '$operation took ${duration.inMilliseconds}ms';
    await info(message, tag: 'PERFORMANCE');
  }

  /// Clear old logs (call this periodically)
  static Future<void> clearOldLogs({int daysToKeep = 30}) async {
    try {
      final cutoffDate = DateTime.now().subtract(Duration(days: daysToKeep));
      await _logRepository.clearLogsOlderThan(cutoffDate);
      await info(
        'Cleared logs older than $daysToKeep days',
        tag: 'MAINTENANCE',
      );
    } catch (e) {
      print('Failed to clear old logs: $e');
    }
  }

  /// Get logs for a specific date
  static Future<List<LogEntry>> getLogsForDate(DateTime date) async {
    try {
      return await _logRepository.getLogsByDate(date);
    } catch (e) {
      await error('Failed to get logs for date', error: e);
      return [];
    }
  }
}
