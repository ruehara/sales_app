// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get language => 'Español';

  @override
  String get counterAppBarTitle => 'Contador';

  @override
  String get counterInfo => 'El valor está en:';

  @override
  String get reset => 'Restablecer los valores';

  @override
  String get change_language => 'Cambia el idioma';

  @override
  String get theme => 'Cambiar el tema';

  @override
  String get increment => 'Incremento';

  @override
  String get decrement => 'Disminuir';

  @override
  String get exit => 'Salir de la aplicación';

  @override
  String get exit_msg => '¿Realmente quieres salir de la aplicación?';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get list_title => 'Lista de ejemplo';

  @override
  String get detail_title => 'Detalle';

  @override
  String get auth_page => 'Página de Autenticación';

  @override
  String get portuguese => 'Portugués';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get dark => 'Oscuro';

  @override
  String get light => 'Claro';

  @override
  String get execute_maintenance => 'Ejecutar Mantenimiento';

  @override
  String get test_page => 'Página de Prueba';

  @override
  String get helloWorld => 'Hola Mundo';

  @override
  String greeting(Object firstName) {
    return '¡Bienvenido, $firstName!';
  }

  @override
  String get not_found => 'No encontrado';
}
