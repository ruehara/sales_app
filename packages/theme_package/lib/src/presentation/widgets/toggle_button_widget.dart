import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/theme_entity.dart';
import '../bloc/theme_bloc.dart';

Widget buildThemeToggleButtons(
  BuildContext context,
  List<ThemeEntity> themes,
  ThemeEntity currentTheme,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ToggleButtons(
        direction: Axis.horizontal,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        constraints: const BoxConstraints(minHeight: 25.0, minWidth: 85.0),
        onPressed: (int index) {
          final selectedTheme = themes[index];
          BlocProvider.of<ThemeBloc>(
            context,
          ).add(ChangeThemeEvent(theme: selectedTheme));
        },
        isSelected: themes
            .map((theme) => theme.type == currentTheme.type)
            .toList(),
        children: themes.map((theme) => Text(theme.name)).toList(),
      ),
    ],
  );
}
