import 'package:flutter/material.dart';
import 'package:language_package/language_package.dart';

class ExitPopupDialog {
  ExitPopupDialog._();

  static show(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(localizations.exit),
          content: Text(localizations.exit_msg),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(localizations.no),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(localizations.yes),
            ),
          ],
        );
      },
    );
  }
}
