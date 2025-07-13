class LogConstants {
  static const String logDirectoryName = 'app_logs';
  static const int maxLogFileSize = 10 * 1024 * 1024; // 10MB
  static const int maxLogRetentionDays = 30;

  static DateTime get cutoffDate =>
      DateTime.now().subtract(const Duration(days: maxLogRetentionDays));
}
