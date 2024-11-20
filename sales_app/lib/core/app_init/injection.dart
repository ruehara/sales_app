import 'package:get_it/get_it.dart';

import '../services/language/language_bloc.dart';
import '../services/shared_preferences/shared_preferences.dart';
import '../services/theme/theme_bloc.dart';

final getIt = GetIt.instance;

Future<void> loadServiceLocator() async {
  getIt.registerFactory<AppSharedPreferences>(() => SharedPrefsService());
  getIt.registerLazySingleton<LanguageBloc>(() => LanguageBloc());
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
}
