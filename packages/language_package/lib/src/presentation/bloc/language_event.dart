import 'package:equatable/equatable.dart';
import '../../domain/entities/language_entity.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class LanguageStarted extends LanguageEvent {
  const LanguageStarted();
}

class ChangeLanguageEvent extends LanguageEvent {
  const ChangeLanguageEvent({required this.language});

  final LanguageEntity language;

  @override
  List<Object> get props => [language];
}

class ResetLanguageEvent extends LanguageEvent {
  const ResetLanguageEvent();
}

class GetSupportedLanguagesEvent extends LanguageEvent {
  const GetSupportedLanguagesEvent();
}
