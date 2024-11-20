// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/tafcores.drift.dart' as i1;
import 'package:sales_app/database/tables/tafperfil.drift.dart' as i2;
import 'package:sales_app/database/tables/taffiguraperfil.drift.dart' as i3;
import 'package:sales_app/database/tables/tafusu.drift.dart' as i4;
import 'package:sales_app/database/tables/taflog.drift.dart' as i5;
import 'package:sales_app/database/tables/teste.drift.dart' as i6;
import 'package:sales_app/database/accessor.dart' as i7;
import 'package:sales_app/database/database.dart' as i8;
import 'package:drift/internal/modular.dart' as i9;

abstract class $Database extends i0.GeneratedDatabase {
  $Database(i0.QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final i1.Tafcolors tafcolors = i1.Tafcolors(this);
  late final i2.Tafperfil tafperfil = i2.Tafperfil(this);
  late final i3.Taffiguraperfil taffiguraperfil = i3.Taffiguraperfil(this);
  late final i4.Tafusu tafusu = i4.Tafusu(this);
  late final i5.Taflog taflog = i5.Taflog(this);
  late final i6.Tafteste tafteste = i6.Tafteste(this);
  late final i7.MyAccessor myAccessor = i7.MyAccessor(this as i8.Database);
  i1.TafcoresDrift get tafcoresDrift => i9.ReadDatabaseContainer(this)
      .accessor<i1.TafcoresDrift>(i1.TafcoresDrift.new);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities =>
      [tafcolors, tafperfil, taffiguraperfil, tafusu, taflog, tafteste];
}

class $DatabaseManager {
  final $Database _db;
  $DatabaseManager(this._db);
  i1.$TafcolorsTableManager get tafcolors =>
      i1.$TafcolorsTableManager(_db, _db.tafcolors);
  i2.$TafperfilTableManager get tafperfil =>
      i2.$TafperfilTableManager(_db, _db.tafperfil);
  i3.$TaffiguraperfilTableManager get taffiguraperfil =>
      i3.$TaffiguraperfilTableManager(_db, _db.taffiguraperfil);
  i4.$TafusuTableManager get tafusu => i4.$TafusuTableManager(_db, _db.tafusu);
  i5.$TaflogTableManager get taflog => i5.$TaflogTableManager(_db, _db.taflog);
  i6.$TaftesteTableManager get tafteste =>
      i6.$TaftesteTableManager(_db, _db.tafteste);
}
