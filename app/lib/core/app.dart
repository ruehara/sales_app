import 'package:app/utils/custom_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:language_package/language_package.dart';
import 'package:theme_package/theme_package.dart';
import '../modules/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetIt.instance<LanguageBloc>()..add(const LanguageStarted()),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.instance<ThemeBloc>()..add(const ThemeStarted()),
        ),
      ],
      child: _AppBuilder(),
    );
  }
}

class _AppBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, languageState) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            // Default values
            Locale currentLocale = const Locale('pt', 'BR');
            ThemeMode currentThemeMode = ThemeMode.system;

            // Extract locale from language state
            if (languageState is LanguageLoaded) {
              currentLocale = languageState.currentLanguage.locale;
            }

            // Extract theme mode using new simplified property
            if (themeState is ThemeLoaded) {
              currentThemeMode = themeState.currentTheme.themeMode;
            }

            return MaterialApp(
              locale: currentLocale,
              themeMode: currentThemeMode,
              scrollBehavior: MyCustomScrollBehavior(),
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: _buildHome(languageState, themeState),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }

  Widget _buildHome(LanguageState languageState, ThemeState themeState) {
    // Show loading if either service is still loading
    if (languageState is LanguageLoading || themeState is ThemeLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    // Show error if either service has error
    if (languageState is LanguageError) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 48),
              const SizedBox(height: 16),
              Text('Language Error: ${languageState.message}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Retry language loading
                  GetIt.instance<LanguageBloc>().add(const LanguageStarted());
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (themeState is ThemeError) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 48),
              const SizedBox(height: 16),
              Text('Theme Error: ${themeState.message}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Retry theme loading
                  GetIt.instance<ThemeBloc>().add(const ThemeStarted());
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    return const HomePage();
  }
}
