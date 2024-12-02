import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sales_app/core/services/language/language_state.dart';
import 'package:sales_app/core/services/theme/theme_bloc.dart';
import 'package:sales_app/core/services/theme/theme_state.dart';
import 'package:sales_app/modules/counter/counter.dart';
import 'package:sales_app/l10n/l10n.dart';

import '../../../core/services/language/app_languages.dart';
import '../../../core/services/language/language_events.dart';
import '../../../core/services/maintenance/maintenance.dart';
import '../../../core/services/theme/theme_events.dart';
import '../../../shared/widgets/exit_dalog.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const TestView(),
    );
  }
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> with WidgetsBindingObserver {
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
      response = await ExitPopupDialog.show(context).then(
          (value) => value ? AppExitResponse.exit : AppExitResponse.cancel);
    }
    if (response == AppExitResponse.cancel) {
      return response;
    } else {
      exit(0);
    }
  }

  Future<bool> exitApp() async {
    if (!context.canPop()) {
      bool ret = await ExitPopupDialog.show(context)
          .then((value) => value ? true : false);
      if (ret) {
        SystemNavigator.pop();
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var locale = context.language.state.locale;
    List<Widget> languages = <Widget>[
      Text(context.l10n.portuguese),
      Text(context.l10n.spanish),
      Text(context.l10n.english)
    ];
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        final bool shouldPop = await ExitPopupDialog.show(context) ?? false;
        if (context.mounted && shouldPop) {
          SystemNavigator.pop();
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.l10n.auth_page),
          ),
          body: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Maintenance.run();
                      },
                      child: Text(context.l10n.execute_maintenance),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.theme.add(ThemeChangeEvent());
                      },
                      child: Text(context.l10n.theme),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed('teste');
                      },
                      child: Text(context.l10n.detail_title),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed('image_picker');
                      },
                      child: Text('Image Picker'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed('file_picker');
                      },
                      child: Text('File Picker'),
                    ),
                    const SizedBox(height: 10),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        context.language.add(
                          index == 0
                              ? PortugueseChangeEvent()
                              : index == 1
                                  ? SpanishChangeEvent()
                                  : EnglishChangeEvent(),
                        );
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      constraints: const BoxConstraints(
                        minHeight: 30.0,
                        minWidth: 80.0,
                      ),
                      isSelected: [
                        locale.languageCode ==
                            AppLanguage.portuguese.languageCode,
                        locale.languageCode == AppLanguage.spanish.languageCode,
                        locale.languageCode == AppLanguage.english.languageCode,
                      ],
                      children: languages,
                    ),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            mini: true,
            onPressed: () {
              context.pushNamed('counter');
            },
            child: const Icon(Icons.login),
          ),
        ),
      ),
    );
  }
}
