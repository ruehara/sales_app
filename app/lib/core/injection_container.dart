import 'package:get_it/get_it.dart';
import 'package:language_package/language_package.dart';
import 'package:logging_package/logging_package.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_package/theme_package.dart';

class InjectionContainer {
  static Future<void> init() async {
    // Initialize packages
    await LanguageInjection.init();
    await ThemeInjection.init();
    await LogInjection.init();
  }

  static void reset() {
    final sl = GetIt.instance;
    // Reset in reverse order
    LogInjection.reset();
    ThemeInjection.reset();
    LanguageInjection.reset();

    // Reset shared dependencies if they exist
    if (sl.isRegistered<SharedPreferences>()) {
      sl.unregister<SharedPreferences>();
    }
  }
}
