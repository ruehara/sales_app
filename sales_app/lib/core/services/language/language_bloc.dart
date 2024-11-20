import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_init/injection.dart';
import '../shared_preferences/shared_preferences.dart';
import 'app_languages.dart';
import 'language_events.dart';
import 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc()
      : super(InitialLanguageState(
            locale: getIt<AppSharedPreferences>().getLocale())) {
    on<PortugueseChangeEvent>((event, emit) async {
      emit(const PortugueseLanguageState(locale: AppLanguage.portuguese));
      getIt<AppSharedPreferences>().setLocale(AppLanguage.portuguese);
    });

    on<EnglishChangeEvent>((event, emit) async {
      emit(const EnglishLanguageState(locale: AppLanguage.english));
      getIt<AppSharedPreferences>().setLocale(AppLanguage.english);
    });

    on<SpanishChangeEvent>((event, emit) async {
      emit(const SpanishLanguageState(locale: AppLanguage.spanish));
      getIt<AppSharedPreferences>().setLocale(AppLanguage.spanish);
    });
  }
}
