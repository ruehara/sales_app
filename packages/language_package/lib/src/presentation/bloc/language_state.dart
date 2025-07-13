import 'package:equatable/equatable.dart';
import '../../domain/entities/language_entity.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial();
}

class LanguageLoading extends LanguageState {
  const LanguageLoading();
}

class LanguageLoaded extends LanguageState {
  const LanguageLoaded({required this.currentLanguage});

  final LanguageEntity currentLanguage;
  List<LanguageEntity> get supportedLanguages =>
      LanguageEntity.supportedLanguages;

  @override
  List<Object> get props => [currentLanguage];

  LanguageLoaded copyWith({LanguageEntity? currentLanguage}) {
    return LanguageLoaded(
      currentLanguage: currentLanguage ?? this.currentLanguage,
    );
  }
}

class LanguageError extends LanguageState {
  const LanguageError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
