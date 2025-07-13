import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../../core/log_constants.dart';
import '../../core/log_exceptions.dart';
import '../../domain/entities/log_entry.dart';
import 'local_log_datasource.dart';

class LocalLogDataSourceImpl implements LocalLogDataSource {
  const LocalLogDataSourceImpl();

  @override
  Future<void> writeLog(LogEntry logEntry) async {
    try {
      final directory = await _getLogDirectory();
      final file = File('${directory.path}/${logEntry.fileName}');

      // Create file if it doesn't exist
      if (!await file.exists()) {
        await file.create(recursive: true);
      }

      // Append log entry to file
      await file.writeAsString(
        '${logEntry.formattedMessage}\n',
        mode: FileMode.append,
      );
    } catch (e) {
      throw LogWriteException('Failed to write log: $e');
    }
  }

  @override
  Future<List<LogEntry>> readLogsByDate(DateTime date) async {
    try {
      final directory = await _getLogDirectory();
      final fileName = 'log_${date.toIso8601String().split('T')[0]}.txt';
      final file = File('${directory.path}/$fileName');

      if (!await file.exists()) {
        return [];
      }

      final content = await file.readAsString();
      final lines = content.split('\n').where((line) => line.isNotEmpty);

      return lines.map((line) => _parseLogEntry(line)).toList();
    } catch (e) {
      throw LogReadException('Failed to read logs: $e');
    }
  }

  @override
  Future<void> clearLogs() async {
    try {
      final directory = await _getLogDirectory();
      if (await directory.exists()) {
        await directory.delete(recursive: true);
      }
    } catch (e) {
      throw LogClearException('Failed to clear logs: $e');
    }
  }

  @override
  Future<void> clearLogsOlderThan(DateTime date) async {
    try {
      final directory = await _getLogDirectory();
      if (!await directory.exists()) return;

      final entities = await directory.list().toList();
      for (final entity in entities) {
        if (entity is File && entity.path.contains('log_')) {
          final stat = await entity.stat();
          if (stat.modified.isBefore(date)) {
            await entity.delete();
          }
        }
      }
    } catch (e) {
      throw LogClearException('Failed to clear old logs: $e');
    }
  }

  Future<Directory> _getLogDirectory() async {
    final appDir = await getApplicationDocumentsDirectory();
    return Directory('${appDir.path}/${LogConstants.logDirectoryName}');
  }

  LogEntry _parseLogEntry(String line) {
    try {
      // Parse format: [LEVEL] timestamp [tag] message
      final parts = line.split('] ');
      if (parts.length < 3) {
        return LogEntry(
          level: LogLevel.info,
          message: line,
          timestamp: DateTime.now(),
        );
      }

      // Extract level
      final levelStr = parts[0].replaceAll('[', '');
      final level = LogLevel.values.firstWhere(
        (l) => l.name.toUpperCase() == levelStr,
        orElse: () => LogLevel.info,
      );

      // Extract timestamp
      final timestampStr = parts[1];
      final timestamp = DateTime.tryParse(timestampStr) ?? DateTime.now();

      // Extract tag and message
      String? tag;
      String message;
      if (parts[2].startsWith('[') && parts[2].contains('] ')) {
        final tagEnd = parts[2].indexOf('] ');
        tag = parts[2].substring(1, tagEnd);
        message = parts[2].substring(tagEnd + 2);
      } else {
        message = parts.sublist(2).join('] ');
      }

      return LogEntry(
        level: level,
        message: message,
        timestamp: timestamp,
        tag: tag,
      );
    } catch (e) {
      // If parsing fails, return entry with original line as message
      return LogEntry(
        level: LogLevel.info,
        message: line,
        timestamp: DateTime.now(),
      );
    }
  }
}
