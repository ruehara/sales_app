import 'package:equatable/equatable.dart';
import '../../domain/entities/theme_entity.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial();
}

class ThemeLoading extends ThemeState {
  const ThemeLoading();
}

class ThemeLoaded extends ThemeState {
  const ThemeLoaded({required this.currentTheme});

  final ThemeEntity currentTheme;
  List<ThemeEntity> get supportedThemes => ThemeEntity.supportedThemes;

  @override
  List<Object> get props => [currentTheme];

  ThemeLoaded copyWith({ThemeEntity? currentTheme}) {
    return ThemeLoaded(currentTheme: currentTheme ?? this.currentTheme);
  }
}

class ThemeError extends ThemeState {
  const ThemeError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
