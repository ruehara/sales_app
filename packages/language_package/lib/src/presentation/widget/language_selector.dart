import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/language_bloc.dart';
import 'dropdown_widget.dart';
import 'radiobuttons_widget.dart';
import 'togglebuttons_widget.dart';

class LanguageSelector extends StatelessWidget {
  final bool showDropDownMenu;
  final bool showRadioSelector;
  final bool showToggleSelector;

  const LanguageSelector({
    super.key,
    this.showDropDownMenu = false,
    this.showRadioSelector = false,
    this.showToggleSelector = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return switch (state) {
          LanguageLoaded() => _buildLoadedState(state, context),
          LanguageLoading() => _buildLoadingState(),
          LanguageError() => _buildErrorState(context),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  Widget _buildLoadedState(LanguageLoaded state, BuildContext context) {
    final selectors = <bool, Widget Function()>{
      showDropDownMenu: () => buildDropDown(
        context,
        state.supportedLanguages,
        state.currentLanguage,
      ),
      showRadioSelector: () => buildRadioButtons(
        context,
        state.supportedLanguages,
        state.currentLanguage,
      ),
      showToggleSelector: () => buildToggleButtons(
        context,
        state.supportedLanguages,
        state.currentLanguage,
      ),
    };

    final enabledWidgets = selectors.entries
        .where((entry) => entry.key)
        .map((entry) => entry.value())
        .toList();

    if (enabledWidgets.isEmpty) {
      return const Center(
        child: Text(
          'No language selector enabled',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: enabledWidgets,
    );
  }

  Widget _buildLoadingState() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Loading languages...'),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline,
                color: Theme.of(context).colorScheme.error,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                'Error loading languages',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Please check your connection and try again',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<LanguageBloc>().add(const LanguageStarted());
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
