import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../database/connection/connection.dart';
import '../../database/database.dart';
import '../services/language/language_bloc.dart';
import '../services/shared_preferences/shared_preferences.dart';
import '../services/theme/theme_bloc.dart';

final getIt = GetIt.instance;

Future<void> loadServiceLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  getIt.registerSingleton<AppSharedPreferences>(SharedPrefsService());
  getIt.registerLazySingleton<LanguageBloc>(() => LanguageBloc());
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
  getIt.registerSingleton<Database>(Database(DatabaseConnection(connect())));
}
