import 'package:equatable/equatable.dart';

enum LogLevel {
  debug,
  info,
  warning,
  error;

  String get name => switch (this) {
    LogLevel.debug => 'DEBUG',
    LogLevel.info => 'INFO',
    LogLevel.warning => 'WARNING',
    LogLevel.error => 'ERROR',
  };

  String get prefix => switch (this) {
    LogLevel.debug => '[DEBUG]',
    LogLevel.info => '[INFO]',
    LogLevel.warning => '[WARNING]',
    LogLevel.error => '[ERROR]',
  };
}

class LogEntry extends Equatable {
  const LogEntry({
    required this.level,
    required this.message,
    required this.timestamp,
    this.tag,
    this.stackTrace,
  });

  final LogLevel level;
  final String message;
  final DateTime timestamp;
  final String? tag;
  final StackTrace? stackTrace;

  String get formattedMessage {
    final dateStr = timestamp.toIso8601String();
    final tagStr = tag != null ? '[${tag!}] ' : '';
    final stackStr = stackTrace != null ? '\nStackTrace: $stackTrace' : '';

    return '${level.prefix} $dateStr $tagStr$message$stackStr';
  }

  String get fileName {
    final date = DateTime(timestamp.year, timestamp.month, timestamp.day);
    return 'log_${date.toIso8601String().split('T')[0]}.txt';
  }

  @override
  List<Object?> get props => [level, message, timestamp, tag, stackTrace];
}
