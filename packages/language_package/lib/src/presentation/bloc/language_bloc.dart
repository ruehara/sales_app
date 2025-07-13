import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/change_language.dart';
import '../../domain/usecases/get_current_language.dart';
import '../../domain/usecases/get_supported_languages.dart';
import '../../domain/usecases/reset_language.dart';
import 'language_event.dart';
import 'language_state.dart';

export 'language_event.dart';
export 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc({
    required GetCurrentLanguageUseCase getCurrentLanguageUseCase,
    required ChangeLanguageUseCase changeLanguageUseCase,
    required GetSupportedLanguagesUseCase getSupportedLanguagesUseCase,
    required ResetLanguageUseCase resetLanguageUseCase,
  }) : _getCurrentLanguageUseCase = getCurrentLanguageUseCase,
       _changeLanguageUseCase = changeLanguageUseCase,
       _resetLanguageUseCase = resetLanguageUseCase,
       super(const LanguageInitial()) {
    on<LanguageStarted>(_onLanguageStarted);
    on<ChangeLanguageEvent>(_onLanguageChanged);
    on<ResetLanguageEvent>(_onLanguageReset);
  }

  final GetCurrentLanguageUseCase _getCurrentLanguageUseCase;
  final ChangeLanguageUseCase _changeLanguageUseCase;
  final ResetLanguageUseCase _resetLanguageUseCase;

  Future<void> _onLanguageStarted(
    LanguageStarted event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      emit(const LanguageLoading());
      final currentLanguage = await _getCurrentLanguageUseCase();
      emit(LanguageLoaded(currentLanguage: currentLanguage));
    } catch (e) {
      emit(LanguageError(e.toString()));
    }
  }

  Future<void> _onLanguageChanged(
    ChangeLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      await _changeLanguageUseCase(event.language);
      emit(LanguageLoaded(currentLanguage: event.language));
    } catch (e) {
      emit(LanguageError(e.toString()));
    }
  }

  Future<void> _onLanguageReset(
    ResetLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      await _resetLanguageUseCase();
      final defaultLanguage = await _getCurrentLanguageUseCase();
      emit(LanguageLoaded(currentLanguage: defaultLanguage));
    } catch (e) {
      emit(LanguageError(e.toString()));
    }
  }
}
