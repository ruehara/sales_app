import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/theme_entity.dart';
import '../bloc/theme_bloc.dart';

Widget buildThemeIconButtons(
  BuildContext context,
  List<ThemeEntity> themes,
  ThemeEntity currentTheme,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: themes.map((theme) {
      final isSelected = theme.type == currentTheme.type;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Material(
          elevation: isSelected ? 4 : 0,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? Theme.of(context).colorScheme.primaryContainer
                  : null,
              borderRadius: BorderRadius.circular(8),
              border: isSelected
                  ? Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    )
                  : null,
            ),
            child: IconButton(
              onPressed: () {
                BlocProvider.of<ThemeBloc>(
                  context,
                ).add(ChangeThemeEvent(theme: theme));
              },
              icon: Icon(
                theme.icon,
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
            ),
          ),
        ),
      );
    }).toList(),
  );
}
