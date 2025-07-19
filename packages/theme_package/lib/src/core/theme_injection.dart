import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../theme_package.dart';

class ThemeInjection {
  static Future<void> init() async {
    final sl = GetIt.instance;

    // Helper function to reduce boilerplate
    void registerIfAbsent<T extends Object>(T Function() factory) {
      if (!sl.isRegistered<T>()) {
        sl.registerLazySingleton<T>(factory);
      }
    }

    // External Dependencies
    if (!sl.isRegistered<SharedPreferences>()) {
      final sharedPreferences = await SharedPreferences.getInstance();
      sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    }

    // Repositories
    registerIfAbsent<ThemeRepository>(
      () => ThemeRepositoryImpl(sl<SharedPreferences>()),
    );

    // Use Cases
    registerIfAbsent<GetCurrentThemeUseCase>(
      () => GetCurrentThemeUseCase(sl()),
    );
    registerIfAbsent<ChangeThemeUseCase>(() => ChangeThemeUseCase(sl()));
    registerIfAbsent<GetSupportedThemesUseCase>(
      () => GetSupportedThemesUseCase(sl()),
    );
    registerIfAbsent<ResetThemeUseCase>(() => ResetThemeUseCase(sl()));

    // BLoC - always register as factory
    if (!sl.isRegistered<ThemeBloc>()) {
      sl.registerFactory<ThemeBloc>(
        () => ThemeBloc(
          getCurrentThemeUseCase: sl(),
          changeThemeUseCase: sl(),
          getSupportedThemesUseCase: sl(),
          resetThemeUseCase: sl(),
        ),
      );
    }
  }

  static void reset() {
    final sl = GetIt.instance;

    // Reset in reverse order
    if (sl.isRegistered<ThemeBloc>()) sl.unregister<ThemeBloc>();
    if (sl.isRegistered<ResetThemeUseCase>()) {
      sl.unregister<ResetThemeUseCase>();
    }
    if (sl.isRegistered<GetSupportedThemesUseCase>()) {
      sl.unregister<GetSupportedThemesUseCase>();
    }
    if (sl.isRegistered<ChangeThemeUseCase>()) {
      sl.unregister<ChangeThemeUseCase>();
    }
    if (sl.isRegistered<GetCurrentThemeUseCase>()) {
      sl.unregister<GetCurrentThemeUseCase>();
    }
    if (sl.isRegistered<ThemeRepository>()) {
      sl.unregister<ThemeRepository>();
    }
  }
}
