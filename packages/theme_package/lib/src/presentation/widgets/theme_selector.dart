import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/theme_bloc.dart';
import 'drop_down_widget.dart';
import 'radio_button_widget.dart';
import 'toggle_button_widget.dart';

class ThemeSelector extends StatelessWidget {
  final bool showDropDownMenu;
  final bool showRadioSelector;
  final bool showToggleSelector;
  final bool showIconButtons;
  final bool showSegmentedButton;

  const ThemeSelector({
    super.key,
    this.showDropDownMenu = false,
    this.showRadioSelector = false,
    this.showToggleSelector = false,
    this.showIconButtons = false,
    this.showSegmentedButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return switch (state) {
          ThemeLoaded() => _buildLoadedState(state, context),
          ThemeLoading() => _buildLoadingState(),
          ThemeError() => _buildErrorState(context),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  Widget _buildLoadedState(ThemeLoaded state, BuildContext context) {
    final selectors = <bool, Widget Function()>{
      showDropDownMenu: () => buildThemeDropDown(
        context,
        state.supportedThemes,
        state.currentTheme,
      ),
      showRadioSelector: () => buildThemeRadioButtons(
        context,
        state.supportedThemes,
        state.currentTheme,
      ),
      showToggleSelector: () => buildThemeToggleButtons(
        context,
        state.supportedThemes,
        state.currentTheme,
      ),
    };

    final enabledWidgets = selectors.entries
        .where((entry) => entry.key)
        .map((entry) => entry.value())
        .toList();

    if (enabledWidgets.isEmpty) {
      return const Center(
        child: Text(
          'No theme selector enabled',
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
          Text('Loading themes...'),
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
                'Error loading themes',
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
                      context.read<ThemeBloc>().add(const ThemeStarted());
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
