import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/language_entity.dart';
import '../bloc/language_bloc.dart';

Widget buildRadioButtons(
  BuildContext context,
  List<LanguageEntity> languages,
  LanguageEntity currentLanguage,
) {
  return SizedBox(
    width: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: languages.map((language) {
        return RadioListTile<String>(
          dense: true,
          title: Text(language.name),
          value: language.locale.languageCode,
          groupValue: currentLanguage.locale.languageCode,
          onChanged: (String? value) {
            if (value != null) {
              final selectedLanguage = LanguageEntity.fromCode(value);
              BlocProvider.of<LanguageBloc>(
                context,
              ).add(ChangeLanguageEvent(language: selectedLanguage));
            }
          },
        );
      }).toList(),
    ),
  );
}
