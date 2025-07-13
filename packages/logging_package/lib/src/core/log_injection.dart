import 'package:get_it/get_it.dart';
import '../../logging_package.dart';

class LogInjection {
  static Future<void> init() async {
    final sl = GetIt.instance;

    // Helper function to reduce boilerplate
    void registerIfAbsent<T extends Object>(T Function() factory) {
      if (!sl.isRegistered<T>()) {
        sl.registerLazySingleton<T>(factory);
      }
    }

    // DataSources
    registerIfAbsent<LocalLogDataSource>(() => const LocalLogDataSourceImpl());

    // Repositories
    registerIfAbsent<LogRepository>(
      () => LogRepositoryImpl(localLogDataSource: sl<LocalLogDataSource>()),
    );

    // Use Cases
    registerIfAbsent<LogDebugUseCase>(() => LogDebugUseCase(sl()));
    registerIfAbsent<LogInfoUseCase>(() => LogInfoUseCase(sl()));
    registerIfAbsent<LogWarningUseCase>(() => LogWarningUseCase(sl()));
    registerIfAbsent<LogErrorUseCase>(() => LogErrorUseCase(sl()));

    // BLoC - always register as factory
    if (!sl.isRegistered<LogBloc>()) {
      sl.registerFactory<LogBloc>(
        () => LogBloc(
          logDebugUseCase: sl(),
          logInfoUseCase: sl(),
          logWarningUseCase: sl(),
          logErrorUseCase: sl(),
        ),
      );
    }
  }

  static void reset() {
    final sl = GetIt.instance;

    // Reset in reverse order
    if (sl.isRegistered<LogBloc>()) sl.unregister<LogBloc>();
    if (sl.isRegistered<LogErrorUseCase>()) sl.unregister<LogErrorUseCase>();
    if (sl.isRegistered<LogWarningUseCase>()) {
      sl.unregister<LogWarningUseCase>();
    }
    if (sl.isRegistered<LogInfoUseCase>()) sl.unregister<LogInfoUseCase>();
    if (sl.isRegistered<LogDebugUseCase>()) sl.unregister<LogDebugUseCase>();
    if (sl.isRegistered<LogRepository>()) sl.unregister<LogRepository>();
    if (sl.isRegistered<LocalLogDataSource>()) {
      sl.unregister<LocalLogDataSource>();
    }
  }
}
