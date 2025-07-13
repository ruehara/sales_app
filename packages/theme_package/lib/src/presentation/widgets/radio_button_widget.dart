import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/theme_entity.dart';
import '../bloc/theme_bloc.dart';

Widget buildThemeRadioButtons(
  BuildContext context,
  List<ThemeEntity> themes,
  ThemeEntity currentTheme,
) {
  return SizedBox(
    width: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: themes.map((theme) {
        return RadioListTile<String>(
          dense: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [const SizedBox(width: 8), Text(theme.name)],
          ),
          value: theme.type,
          groupValue: currentTheme.type,
          onChanged: (String? value) {
            if (value != null) {
              final selectedTheme = ThemeEntity.fromType(value);
              BlocProvider.of<ThemeBloc>(
                context,
              ).add(ChangeThemeEvent(theme: selectedTheme));
            }
          },
        );
      }).toList(),
    ),
  );
}
