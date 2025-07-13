import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../theme_package.dart';

export 'theme_event.dart';
export 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({
    required GetCurrentThemeUseCase getCurrentThemeUseCase,
    required ChangeThemeUseCase changeThemeUseCase,
    required GetSupportedThemesUseCase getSupportedThemesUseCase,
    required ResetThemeUseCase resetThemeUseCase,
  }) : _getCurrentThemeUseCase = getCurrentThemeUseCase,
       _changeThemeUseCase = changeThemeUseCase,
       _resetThemeUseCase = resetThemeUseCase,
       super(const ThemeInitial()) {
    on<ThemeStarted>(_onThemeStarted);
    on<ChangeThemeEvent>(_onThemeChanged);
    on<ResetThemeEvent>(_onThemeReset);
  }

  final GetCurrentThemeUseCase _getCurrentThemeUseCase;
  final ChangeThemeUseCase _changeThemeUseCase;
  final ResetThemeUseCase _resetThemeUseCase;

  Future<void> _onThemeStarted(
    ThemeStarted event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      emit(const ThemeLoading());
      final currentTheme = await _getCurrentThemeUseCase();
      emit(ThemeLoaded(currentTheme: currentTheme));
    } catch (e) {
      emit(ThemeError(e.toString()));
    }
  }

  Future<void> _onThemeChanged(
    ChangeThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      await _changeThemeUseCase(event.theme);
      emit(ThemeLoaded(currentTheme: event.theme));
    } catch (e) {
      emit(ThemeError(e.toString()));
    }
  }

  Future<void> _onThemeReset(
    ResetThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      await _resetThemeUseCase();
      final defaultTheme = await _getCurrentThemeUseCase();
      emit(ThemeLoaded(currentTheme: defaultTheme));
    } catch (e) {
      emit(ThemeError(e.toString()));
    }
  }
}
