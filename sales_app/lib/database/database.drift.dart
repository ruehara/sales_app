// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/tafcolors.drift.dart' as i1;
import 'package:sales_app/database/tables/teste.drift.dart' as i2;
import 'package:sales_app/database/accessor.dart' as i3;
import 'package:sales_app/database/database.dart' as i4;
import 'package:drift/internal/modular.dart' as i5;

abstract class $Database extends i0.GeneratedDatabase {
  $Database(i0.QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final i1.Tafcolors tafcolors = i1.Tafcolors(this);
  late final i2.Tafteste tafteste = i2.Tafteste(this);
  late final i3.MyAccessor myAccessor = i3.MyAccessor(this as i4.Database);
  i1.TafcolorsDrift get tafcolorsDrift => i5.ReadDatabaseContainer(this)
      .accessor<i1.TafcolorsDrift>(i1.TafcolorsDrift.new);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities => [tafcolors, tafteste];
}

class $DatabaseManager {
  final $Database _db;
  $DatabaseManager(this._db);
  i1.$TafcolorsTableManager get tafcolors =>
      i1.$TafcolorsTableManager(_db, _db.tafcolors);
  i2.$TaftesteTableManager get tafteste =>
      i2.$TaftesteTableManager(_db, _db.tafteste);
}
