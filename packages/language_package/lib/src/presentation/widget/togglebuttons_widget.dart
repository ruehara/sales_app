import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/language_entity.dart';
import '../bloc/language_bloc.dart';

Widget buildToggleButtons(
  BuildContext context,
  List<LanguageEntity> languages,
  LanguageEntity currentLanguage,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ToggleButtons(
        direction: Axis.horizontal,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        constraints: const BoxConstraints(minHeight: 30.0, minWidth: 110.0),
        onPressed: (int index) {
          final selectedLanguage = languages[index];
          BlocProvider.of<LanguageBloc>(
            context,
          ).add(ChangeLanguageEvent(language: selectedLanguage));
        },
        isSelected: languages
            .map((lang) => lang.code == currentLanguage.code)
            .toList(),
        children: languages.map((lang) => Text(lang.name)).toList(),
      ),
    ],
  );
}
