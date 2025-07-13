import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/theme_entity.dart';
import '../bloc/theme_bloc.dart';

Widget buildThemeDropDown(
  BuildContext context,
  List<ThemeEntity> themes,
  ThemeEntity currentTheme,
) {
  return DropdownMenu<String>(
    enableSearch: false,
    initialSelection: currentTheme.type,
    onSelected: (String? themeType) {
      if (themeType != null) {
        final theme = ThemeEntity.fromType(themeType);
        BlocProvider.of<ThemeBloc>(context).add(ChangeThemeEvent(theme: theme));
      }
    },
    dropdownMenuEntries: themes.map<DropdownMenuEntry<String>>((
      ThemeEntity theme,
    ) {
      return DropdownMenuEntry<String>(value: theme.type, label: theme.name);
    }).toList(),
  );
}
