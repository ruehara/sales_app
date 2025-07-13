// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'English';

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get counterInfo => 'The value is at:';

  @override
  String get reset => 'Reset values';

  @override
  String get change_language => 'Change the language';

  @override
  String get theme => 'Change the theme';

  @override
  String get increment => 'Increment';

  @override
  String get decrement => 'Decrement';

  @override
  String get exit => 'Exit the App';

  @override
  String get exit_msg => 'Do you want to exit the App?';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get list_title => 'List Example';

  @override
  String get detail_title => 'Detail';

  @override
  String get auth_page => 'Authentication Page';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get dark => 'Dark';

  @override
  String get light => 'Light';

  @override
  String get execute_maintenance => 'Execute Maintenance';

  @override
  String get test_page => 'Test Page';

  @override
  String get helloWorld => 'Hello World';

  @override
  String greeting(Object firstName) {
    return 'Welcome, $firstName!';
  }

  @override
  String get not_found => 'Not Found';
}
