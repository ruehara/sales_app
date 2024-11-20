import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  //static Database get db => GetIt.instance<Database>();
  static Future<ThemeData> get lightTheme async {
    return ThemeData(
      applyElevationOverlayColor: true,
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
      colorScheme: ColorScheme.light(
        primary: const Color.fromARGB(255, 255, 0, 0),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(2),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: const Color.fromARGB(255, 255, 0, 0),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
