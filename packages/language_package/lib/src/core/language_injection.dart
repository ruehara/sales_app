import 'package:get_it/get_it.dart';
import 'package:shared_preference_package/shared_preference_package.dart';
import '../../language_package.dart';

class LanguageInjection {
  static Future<void> init() async {
    final sl = GetIt.instance;

    // Initialize shared preference package first
    await PreferenceInjection.init();

    // Helper function to reduce boilerplate
    void registerIfAbsent<T extends Object>(T Function() factory) {
      if (!sl.isRegistered<T>()) {
        sl.registerLazySingleton<T>(factory);
      }
    }

    // Repositories
    registerIfAbsent<LanguageRepository>(
      () => LanguageRepositoryImpl(sl<PreferenceRepository>()),
    );

    // Use Cases
    registerIfAbsent<GetCurrentLanguageUseCase>(
      () => GetCurrentLanguageUseCase(sl()),
    );
    registerIfAbsent<ChangeLanguageUseCase>(() => ChangeLanguageUseCase(sl()));
    registerIfAbsent<GetSupportedLanguagesUseCase>(
      () => GetSupportedLanguagesUseCase(sl()),
    );
    registerIfAbsent<ResetLanguageUseCase>(() => ResetLanguageUseCase(sl()));

    // BLoC - always register as factory
    if (!sl.isRegistered<LanguageBloc>()) {
      sl.registerFactory<LanguageBloc>(
        () => LanguageBloc(
          getCurrentLanguageUseCase: sl(),
          changeLanguageUseCase: sl(),
          getSupportedLanguagesUseCase: sl(),
          resetLanguageUseCase: sl(),
        ),
      );
    }
  }

  static void reset() {
    final sl = GetIt.instance;

    // Reset in reverse order
    if (sl.isRegistered<LanguageBloc>()) sl.unregister<LanguageBloc>();
    if (sl.isRegistered<ResetLanguageUseCase>()) {
      sl.unregister<ResetLanguageUseCase>();
    }
    if (sl.isRegistered<GetSupportedLanguagesUseCase>()) {
      sl.unregister<GetSupportedLanguagesUseCase>();
    }
    if (sl.isRegistered<ChangeLanguageUseCase>()) {
      sl.unregister<ChangeLanguageUseCase>();
    }
    if (sl.isRegistered<GetCurrentLanguageUseCase>()) {
      sl.unregister<GetCurrentLanguageUseCase>();
    }
    if (sl.isRegistered<LanguageRepository>()) {
      sl.unregister<LanguageRepository>();
    }
  }
}
