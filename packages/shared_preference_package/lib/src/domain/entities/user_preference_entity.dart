import 'package:equatable/equatable.dart';

class UserPreferenceEntity extends Equatable {
  const UserPreferenceEntity({this.email, this.theme, this.language});

  final String? email;
  final String? theme;
  final String? language;

  UserPreferenceEntity copyWith({
    String? email,
    String? theme,
    String? language,
  }) {
    return UserPreferenceEntity(
      email: email ?? this.email,
      theme: theme ?? this.theme,
      language: language ?? this.language,
    );
  }

  @override
  List<Object?> get props => [email, theme, language];

  @override
  String toString() {
    return 'UserPreferenceEntity(email: $email, theme: $theme, language: $language)';
  }
}

extension UserPreferenceEntityX on UserPreferenceEntity {
  bool get hasEmail => email != null && email!.isNotEmpty;
  bool get hasTheme => theme != null && theme!.isNotEmpty;
  bool get hasLanguage => language != null && language!.isNotEmpty;

  bool get isComplete => hasEmail && hasTheme && hasLanguage;

  bool get isEmpty => !hasEmail && !hasTheme && !hasLanguage;
}

extension StringValidationX on String {
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return emailRegex.hasMatch(this);
  }

  bool get isValidTheme {
    const validThemes = ['light', 'dark', 'system'];
    return validThemes.contains(toLowerCase());
  }

  bool get isValidLanguage {
    const validLanguages = ['en_US', 'es_ES', 'pt_BR'];
    return validLanguages.contains(toLowerCase());
  }
}
