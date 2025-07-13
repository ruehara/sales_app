import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_package/language_package.dart';
import 'package:theme_package/theme_package.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.counterAppBarTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, languageState) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              if (languageState is LanguageLoading ||
                  themeState is ThemeLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (languageState is LanguageError) {
                return Center(
                  child: Text('Language Error: ${languageState.message}'),
                );
              }

              if (themeState is ThemeError) {
                return Center(
                  child: Text('Theme Error: ${themeState.message}'),
                );
              }

              if (languageState is LanguageLoaded &&
                  themeState is ThemeLoaded) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Welcome section
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                localizations.helloWorld,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                localizations.greeting(
                                  '${languageState.currentLanguage.flag} ${languageState.currentLanguage.name}',
                                ),
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(themeState.currentTheme.icon),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Current theme: ${themeState.currentTheme.name}',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Theme selectors section
                      Text(
                        localizations.theme,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      const SizedBox(height: 16),

                      // Theme selector with dropdown
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${localizations.theme} (Toggle Buttons)',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              const Center(
                                child: ThemeSelector(showToggleSelector: true),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Language selectors section
                      Text(
                        localizations.change_language,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      const SizedBox(height: 16),

                      // Language selector with toggle buttons
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${localizations.change_language} (Toggle Buttons)',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              const Center(
                                child: LanguageSelector(
                                  showToggleSelector: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Actions section
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Actions',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.read<LanguageBloc>().add(
                                          const ResetLanguageEvent(),
                                        );
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              '${localizations.change_language} ${localizations.reset}',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        '${localizations.change_language} ${localizations.reset}',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.read<ThemeBloc>().add(
                                          const ResetThemeEvent(),
                                        );
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              '${localizations.theme} ${localizations.reset}',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        '${localizations.theme} ${localizations.reset}',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
