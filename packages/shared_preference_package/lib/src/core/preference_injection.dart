import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repositories/preference_repository_impl.dart';
import '../domain/repositories/preference_repository.dart';
import '../domain/usecases/clear_preferences_usecase.dart';
import '../domain/usecases/get_email_usecase.dart';
import '../domain/usecases/get_language_usecase.dart';
import '../domain/usecases/get_theme_usecase.dart';
import '../domain/usecases/save_email_usecase.dart';
import '../domain/usecases/save_language_usecase.dart';
import '../domain/usecases/save_theme_usecase.dart';

class PreferenceInjection {
  static Future<void> init() async {
    final sl = GetIt.instance;

    // Helper function to reduce boilerplate
    void registerIfAbsent<T extends Object>(T Function() factory) {
      if (!sl.isRegistered<T>()) {
        sl.registerLazySingleton<T>(factory);
      }
    }

    // SharedPreferences - only register if not already registered
    if (!sl.isRegistered<SharedPreferences>()) {
      final sharedPreferences = await SharedPreferences.getInstance();
      sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    }

    // Repositories - only register if not already registered
    registerIfAbsent<PreferenceRepository>(
      () => PreferenceRepositoryImpl(sl<SharedPreferences>()),
    );

    // Use Cases - only register if not already registered
    registerIfAbsent<GetEmailUseCase>(() => GetEmailUseCase(sl()));
    registerIfAbsent<SaveEmailUseCase>(() => SaveEmailUseCase(sl()));
    registerIfAbsent<GetThemeUseCase>(() => GetThemeUseCase(sl()));
    registerIfAbsent<SaveThemeUseCase>(() => SaveThemeUseCase(sl()));
    registerIfAbsent<GetLanguageUseCase>(() => GetLanguageUseCase(sl()));
    registerIfAbsent<SaveLanguageUseCase>(() => SaveLanguageUseCase(sl()));
    registerIfAbsent<ClearPreferencesUseCase>(
      () => ClearPreferencesUseCase(sl()),
    );
  }

  static void reset() {
    final sl = GetIt.instance;

    // Reset in reverse order of dependencies
    if (sl.isRegistered<ClearPreferencesUseCase>()) {
      sl.unregister<ClearPreferencesUseCase>();
    }
    if (sl.isRegistered<SaveLanguageUseCase>()) {
      sl.unregister<SaveLanguageUseCase>();
    }
    if (sl.isRegistered<GetLanguageUseCase>()) {
      sl.unregister<GetLanguageUseCase>();
    }
    if (sl.isRegistered<SaveThemeUseCase>()) {
      sl.unregister<SaveThemeUseCase>();
    }
    if (sl.isRegistered<GetThemeUseCase>()) {
      sl.unregister<GetThemeUseCase>();
    }
    if (sl.isRegistered<SaveEmailUseCase>()) {
      sl.unregister<SaveEmailUseCase>();
    }
    if (sl.isRegistered<GetEmailUseCase>()) {
      sl.unregister<GetEmailUseCase>();
    }
    if (sl.isRegistered<PreferenceRepository>()) {
      sl.unregister<PreferenceRepository>();
    }
  }
}
