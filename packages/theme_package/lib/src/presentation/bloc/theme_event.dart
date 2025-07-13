import 'package:equatable/equatable.dart';
import '../../domain/entities/theme_entity.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeStarted extends ThemeEvent {
  const ThemeStarted();
}

class ChangeThemeEvent extends ThemeEvent {
  const ChangeThemeEvent({required this.theme});

  final ThemeEntity theme;

  @override
  List<Object> get props => [theme];
}

class ResetThemeEvent extends ThemeEvent {
  const ResetThemeEvent();
}
