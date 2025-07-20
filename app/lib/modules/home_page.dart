import 'dart:io';
import 'dart:ui';

import 'package:app/utils/exit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:language_package/language_package.dart';
import 'package:theme_package/theme_package.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<AppExitResponse> didRequestAppExit() async {
    AppExitResponse response = AppExitResponse.cancel;
    if (context.mounted) {
      response = await ExitPopupDialog.show(
        context,
      ).then((value) => value ? AppExitResponse.exit : AppExitResponse.cancel);
    }
    if (response == AppExitResponse.cancel) {
      return response;
    } else {
      exit(0);
    }
  }

  Future<bool> _exitApp() async {
    if (!context.canPop()) {
      bool shouldExit = await ExitPopupDialog.show(context);
      return shouldExit;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.counterAppBarTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) async {
          if (didPop) return;
          bool shouldExit = await _exitApp();
          if (shouldExit) {
            exit(0);
          }
        },
        child: const _HomePageContent(),
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, languageState) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            if (languageState is LanguageLoading ||
                themeState is ThemeLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (languageState is LanguageError) {
              return _ErrorWidget(
                message: 'Language Error: ${languageState.message}',
              );
            }

            if (themeState is ThemeError) {
              return _ErrorWidget(
                message: 'Theme Error: ${themeState.message}',
              );
            }

            if (languageState is LanguageLoaded && themeState is ThemeLoaded) {
              return _LoadedContent(
                languageState: languageState,
                themeState: themeState,
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}

class _LoadedContent extends StatelessWidget {
  const _LoadedContent({required this.languageState, required this.themeState});

  final LanguageLoaded languageState;
  final ThemeLoaded themeState;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _WelcomeSection(languageState: languageState, themeState: themeState),
          const SizedBox(height: 24),
          const _ThemeSection(),
          const SizedBox(height: 16),
          const _LanguageSection(),
          const SizedBox(height: 24),
          const _ActionsSection(),
        ],
      ),
    );
  }
}

class _WelcomeSection extends StatelessWidget {
  const _WelcomeSection({
    required this.languageState,
    required this.themeState,
  });

  final LanguageLoaded languageState;
  final ThemeLoaded themeState;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              localizations.helloWorld,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              localizations.greeting(languageState.currentLanguage.name),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Current theme: ${themeState.currentTheme.name}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _ThemeSection extends StatelessWidget {
  const _ThemeSection();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.theme,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
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
                const Center(child: ThemeSelector(showToggleSelector: true)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LanguageSection extends StatelessWidget {
  const _LanguageSection();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.change_language,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
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
                const Center(child: LanguageSelector(showToggleSelector: true)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionsSection extends StatelessWidget {
  const _ActionsSection();

  void _showResetMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Actions', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<LanguageBloc>().add(
                        const ResetLanguageEvent(),
                      );
                      _showResetMessage(
                        context,
                        '${localizations.change_language} ${localizations.reset}',
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
                      context.read<ThemeBloc>().add(const ResetThemeEvent());
                      _showResetMessage(
                        context,
                        '${localizations.theme} ${localizations.reset}',
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
    );
  }
}
