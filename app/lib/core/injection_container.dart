import 'package:language_package/language_package.dart';
import 'package:logging_package/logging_package.dart';
import 'package:shared_preference_package/shared_preference_package.dart';
import 'package:theme_package/theme_package.dart';

class InjectionContainer {
  static Future<void> init() async {
    // Initialize shared preference package first
    await PreferenceInjection.init();

    // Then initialize language package (will not re-register shared preferences)
    await LanguageInjection.init();

    // Then initialize theme package (will not re-register shared preferences)
    await ThemeInjection.init();

    // Initialize logging package
    await LogInjection.init();
  }

  static void reset() {
    // Reset in reverse order, but don't reset shared preferences multiple times
    LogInjection.reset();

    ThemeInjection.reset();

    // Reset in reverse order, but don't reset shared preferences multiple times
    LanguageInjection.reset();

    // Reset shared preference package last, after all dependent packages
    PreferenceInjection.reset();
  }
}
