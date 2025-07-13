import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/log_debug.dart';
import '../../domain/usecases/log_error.dart';
import '../../domain/usecases/log_info.dart';
import '../../domain/usecases/log_warning.dart';
import 'log_event.dart';
import 'log_state.dart';

export 'log_event.dart';
export 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  LogBloc({
    required LogDebugUseCase logDebugUseCase,
    required LogInfoUseCase logInfoUseCase,
    required LogWarningUseCase logWarningUseCase,
    required LogErrorUseCase logErrorUseCase,
  }) : _logDebugUseCase = logDebugUseCase,
       _logInfoUseCase = logInfoUseCase,
       _logWarningUseCase = logWarningUseCase,
       _logErrorUseCase = logErrorUseCase,
       super(const LogInitial()) {
    on<LogDebugEvent>(_onLogDebug);
    on<LogInfoEvent>(_onLogInfo);
    on<LogWarningEvent>(_onLogWarning);
    on<LogErrorEvent>(_onLogError);
  }

  final LogDebugUseCase _logDebugUseCase;
  final LogInfoUseCase _logInfoUseCase;
  final LogWarningUseCase _logWarningUseCase;
  final LogErrorUseCase _logErrorUseCase;

  Future<void> _onLogDebug(LogDebugEvent event, Emitter<LogState> emit) async {
    try {
      emit(const LogLogging());
      await _logDebugUseCase(event.message, tag: event.tag);
      emit(const LogSuccess());
    } catch (e) {
      emit(LogError(e.toString()));
    }
  }

  Future<void> _onLogInfo(LogInfoEvent event, Emitter<LogState> emit) async {
    try {
      emit(const LogLogging());
      await _logInfoUseCase(event.message, tag: event.tag);
      emit(const LogSuccess());
    } catch (e) {
      emit(LogError(e.toString()));
    }
  }

  Future<void> _onLogWarning(
    LogWarningEvent event,
    Emitter<LogState> emit,
  ) async {
    try {
      emit(const LogLogging());
      await _logWarningUseCase(event.message, tag: event.tag);
      emit(const LogSuccess());
    } catch (e) {
      emit(LogError(e.toString()));
    }
  }

  Future<void> _onLogError(LogErrorEvent event, Emitter<LogState> emit) async {
    try {
      emit(const LogLogging());
      await _logErrorUseCase(
        event.message,
        tag: event.tag,
        stackTrace: event.stackTrace,
      );
      emit(const LogSuccess());
    } catch (e) {
      emit(LogError(e.toString()));
    }
  }
}
