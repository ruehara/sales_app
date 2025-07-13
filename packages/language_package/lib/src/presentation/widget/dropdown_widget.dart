import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/language_entity.dart';
import '../bloc/language_bloc.dart';

Widget buildDropDown(
  BuildContext context,
  List<LanguageEntity> languages,
  LanguageEntity currentLanguage,
) {
  return DropdownMenu<String>(
    enableSearch: false,
    initialSelection: currentLanguage.code,
    onSelected: (String? languageCode) {
      if (languageCode != null) {
        final language = LanguageEntity.fromCode(languageCode);
        BlocProvider.of<LanguageBloc>(
          context,
        ).add(ChangeLanguageEvent(language: language));
      }
    },
    dropdownMenuEntries: languages.map<DropdownMenuEntry<String>>((
      LanguageEntity language,
    ) {
      return DropdownMenuEntry<String>(
        value: language.code,
        label: language.name,
      );
    }).toList(),
  );
}
