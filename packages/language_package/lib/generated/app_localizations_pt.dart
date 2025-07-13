// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get language => 'Português';

  @override
  String get counterAppBarTitle => 'Contador';

  @override
  String get counterInfo => 'O valor está em:';

  @override
  String get reset => 'Reseta os valores';

  @override
  String get change_language => 'Alterar a linguagem';

  @override
  String get theme => 'Alterar o tema';

  @override
  String get increment => 'Incrementa';

  @override
  String get decrement => 'Decrementa';

  @override
  String get exit => 'Sair do App';

  @override
  String get exit_msg => 'Deseja realmente sair do App?';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get list_title => 'Lista Exemplo';

  @override
  String get detail_title => 'Detalhe';

  @override
  String get auth_page => 'Página de Autenticação';

  @override
  String get portuguese => 'Português';

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get dark => 'Escuro';

  @override
  String get light => 'Claro';

  @override
  String get execute_maintenance => 'Executar Manutenção';

  @override
  String get test_page => 'Página de Teste';

  @override
  String get helloWorld => 'Olá Mundo';

  @override
  String greeting(Object firstName) {
    return 'Bem-vindo, $firstName!';
  }

  @override
  String get not_found => 'Não encontrado';
}
