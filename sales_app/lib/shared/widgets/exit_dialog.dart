import 'package:flutter/material.dart';
import 'package:sales_app/l10n/l10n.dart';

class ExitDialog {
  static bool _isDialogShowing = false;

  static show(BuildContext context) {
    if (_isDialogShowing) return;
    _isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.l10n.exit),
          content: Text(context.l10n.exit_msg),
          actions: [
            ElevatedButton(
              onPressed: () {
                _isDialogShowing = false;
                Navigator.of(context).pop(false);
              },
              child: Text(context.l10n.no),
            ),
            ElevatedButton(
              onPressed: () {
                _isDialogShowing = false;
                Navigator.of(context).pop(true);
              },
              child: Text(context.l10n.yes),
            ),
          ],
        );
      },
    );
  }
}
