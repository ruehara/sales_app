import 'package:equatable/equatable.dart';

abstract class LogEvent extends Equatable {
  const LogEvent();

  @override
  List<Object?> get props => [];
}

class LogDebugEvent extends LogEvent {
  const LogDebugEvent({required this.message, this.tag});

  final String message;
  final String? tag;

  @override
  List<Object?> get props => [message, tag];
}

class LogInfoEvent extends LogEvent {
  const LogInfoEvent({required this.message, this.tag});

  final String message;
  final String? tag;

  @override
  List<Object?> get props => [message, tag];
}

class LogWarningEvent extends LogEvent {
  const LogWarningEvent({required this.message, this.tag});

  final String message;
  final String? tag;

  @override
  List<Object?> get props => [message, tag];
}

class LogErrorEvent extends LogEvent {
  const LogErrorEvent({required this.message, this.tag, this.stackTrace});

  final String message;
  final String? tag;
  final StackTrace? stackTrace;

  @override
  List<Object?> get props => [message, tag, stackTrace];
}
