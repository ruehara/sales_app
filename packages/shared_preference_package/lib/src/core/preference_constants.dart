class PreferenceConstants {
  static const String emailKey = 'user_email';
  static const String themeKey = 'user_theme';
  static const String languageKey = 'user_language';

  // Default values
  static const String defaultTheme = 'system';
  static const String defaultLanguage = 'pt_BR';

  // Helper methods
  static List<String> get allKeys => [emailKey, themeKey, languageKey];

  static bool isValidKey(String key) => allKeys.contains(key);

  static String getDefaultValue(String key) {
    switch (key) {
      case themeKey:
        return defaultTheme;
      case languageKey:
        return defaultLanguage;
      default:
        return '';
    }
  }
}
