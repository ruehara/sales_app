import 'package:equatable/equatable.dart';

abstract class LogState extends Equatable {
  const LogState();

  @override
  List<Object> get props => [];
}

class LogInitial extends LogState {
  const LogInitial();
}

class LogLogging extends LogState {
  const LogLogging();
}

class LogSuccess extends LogState {
  const LogSuccess();
}

class LogError extends LogState {
  const LogError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
