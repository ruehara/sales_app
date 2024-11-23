import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/core/app_init/bootstrap.dart';
import 'package:sales_app/core/services/language/language_state.dart';
import 'package:sales_app/core/services/theme/theme_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/app_init/router.dart';
import 'core/services/language/language_bloc.dart';
import 'core/services/theme/app_themes.dart';
import 'core/services/theme/theme_bloc.dart';
import 'shared/utils/scroll.dart';

void main() {
  bootstrap(() => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => context.theme,
        ),
        BlocProvider(
          create: (_) => context.language,
        ),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, languageState) {
            return MaterialApp.router(
              scrollBehavior: CustomScrollBehavior(),
              locale: context.language.state.locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: router,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: context.theme.state.themeMode,
            );
          },
        );
      },
    );
  }
}
