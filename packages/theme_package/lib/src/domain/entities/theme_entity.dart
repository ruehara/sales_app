import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeEntity extends Equatable {
  const ThemeEntity({
    required this.type,
    required this.name,
    required this.icon,
  });

  final String type;
  final String name;
  final IconData icon;

  static List<ThemeEntity> get supportedThemes {
    return [
      const ThemeEntity(type: 'light', name: 'Light', icon: Icons.wb_sunny),
      const ThemeEntity(
        type: 'dark',
        name: 'Dark',
        icon: Icons.nightlight_round,
      ),
      const ThemeEntity(
        type: 'system',
        name: 'System Default',
        icon: Icons.settings_system_daydream,
      ),
    ];
  }

  static ThemeEntity fromType(String type) {
    return supportedThemes.firstWhere(
      (theme) => theme.type == type,
      orElse: () =>
          supportedThemes.firstWhere((theme) => theme.type == 'system'),
    );
  }

  ThemeMode get themeMode {
    return switch (type) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      'system' => ThemeMode.system,
      _ => ThemeMode.system,
    };
  }

  @override
  List<Object?> get props => [type, name, icon];
}
