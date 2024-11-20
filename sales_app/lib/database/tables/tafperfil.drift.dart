// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/tafperfil.drift.dart' as i1;
import 'package:sales_app/database/helpers/converters.dart' as i2;

typedef $TafperfilCreateCompanionBuilder = i1.TafperfilCompanion Function({
  required String cdprfl,
  required String dsprfl,
  required String idrest,
  required String idperf,
  i0.Value<int> rowid,
});
typedef $TafperfilUpdateCompanionBuilder = i1.TafperfilCompanion Function({
  i0.Value<String> cdprfl,
  i0.Value<String> dsprfl,
  i0.Value<String> idrest,
  i0.Value<String> idperf,
  i0.Value<int> rowid,
});

class $TafperfilFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafperfil> {
  $TafperfilFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnWithTypeConverterFilters<String, String, String> get dsprfl =>
      $composableBuilder(
          column: $table.dsprfl,
          builder: (column) => i0.ColumnWithTypeConverterFilters(column));

  i0.ColumnFilters<String> get idrest => $composableBuilder(
      column: $table.idrest, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get idperf => $composableBuilder(
      column: $table.idperf, builder: (column) => i0.ColumnFilters(column));
}

class $TafperfilOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafperfil> {
  $TafperfilOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dsprfl => $composableBuilder(
      column: $table.dsprfl, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get idrest => $composableBuilder(
      column: $table.idrest, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get idperf => $composableBuilder(
      column: $table.idperf, builder: (column) => i0.ColumnOrderings(column));
}

class $TafperfilAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafperfil> {
  $TafperfilAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get cdprfl =>
      $composableBuilder(column: $table.cdprfl, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<String, String> get dsprfl =>
      $composableBuilder(column: $table.dsprfl, builder: (column) => column);

  i0.GeneratedColumn<String> get idrest =>
      $composableBuilder(column: $table.idrest, builder: (column) => column);

  i0.GeneratedColumn<String> get idperf =>
      $composableBuilder(column: $table.idperf, builder: (column) => column);
}

class $TafperfilTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Tafperfil,
    i1.Perfil,
    i1.$TafperfilFilterComposer,
    i1.$TafperfilOrderingComposer,
    i1.$TafperfilAnnotationComposer,
    $TafperfilCreateCompanionBuilder,
    $TafperfilUpdateCompanionBuilder,
    (
      i1.Perfil,
      i0.BaseReferences<i0.GeneratedDatabase, i1.Tafperfil, i1.Perfil>
    ),
    i1.Perfil,
    i0.PrefetchHooks Function()> {
  $TafperfilTableManager(i0.GeneratedDatabase db, i1.Tafperfil table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TafperfilFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TafperfilOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TafperfilAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String> cdprfl = const i0.Value.absent(),
            i0.Value<String> dsprfl = const i0.Value.absent(),
            i0.Value<String> idrest = const i0.Value.absent(),
            i0.Value<String> idperf = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafperfilCompanion(
            cdprfl: cdprfl,
            dsprfl: dsprfl,
            idrest: idrest,
            idperf: idperf,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cdprfl,
            required String dsprfl,
            required String idrest,
            required String idperf,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafperfilCompanion.insert(
            cdprfl: cdprfl,
            dsprfl: dsprfl,
            idrest: idrest,
            idperf: idperf,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TafperfilProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Tafperfil,
    i1.Perfil,
    i1.$TafperfilFilterComposer,
    i1.$TafperfilOrderingComposer,
    i1.$TafperfilAnnotationComposer,
    $TafperfilCreateCompanionBuilder,
    $TafperfilUpdateCompanionBuilder,
    (
      i1.Perfil,
      i0.BaseReferences<i0.GeneratedDatabase, i1.Tafperfil, i1.Perfil>
    ),
    i1.Perfil,
    i0.PrefetchHooks Function()>;

class Tafperfil extends i0.Table with i0.TableInfo<Tafperfil, i1.Perfil> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tafperfil(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _cdprflMeta =
      const i0.VerificationMeta('cdprfl');
  late final i0.GeneratedColumn<String> cdprfl = i0.GeneratedColumn<String>(
      'CDPRFL', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _dsprflMeta =
      const i0.VerificationMeta('dsprfl');
  late final i0.GeneratedColumnWithTypeConverter<String, String> dsprfl =
      i0.GeneratedColumn<String>('DSPRFL', aliasedName, false,
              type: i0.DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<String>(i1.Tafperfil.$converterdsprfl);
  static const i0.VerificationMeta _idrestMeta =
      const i0.VerificationMeta('idrest');
  late final i0.GeneratedColumn<String> idrest = i0.GeneratedColumn<String>(
      'IDREST', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _idperfMeta =
      const i0.VerificationMeta('idperf');
  late final i0.GeneratedColumn<String> idperf = i0.GeneratedColumn<String>(
      'IDPERF', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<i0.GeneratedColumn> get $columns => [cdprfl, dsprfl, idrest, idperf];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafperfil';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Perfil> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CDPRFL')) {
      context.handle(_cdprflMeta,
          cdprfl.isAcceptableOrUnknown(data['CDPRFL']!, _cdprflMeta));
    } else if (isInserting) {
      context.missing(_cdprflMeta);
    }
    context.handle(_dsprflMeta, const i0.VerificationResult.success());
    if (data.containsKey('IDREST')) {
      context.handle(_idrestMeta,
          idrest.isAcceptableOrUnknown(data['IDREST']!, _idrestMeta));
    } else if (isInserting) {
      context.missing(_idrestMeta);
    }
    if (data.containsKey('IDPERF')) {
      context.handle(_idperfMeta,
          idperf.isAcceptableOrUnknown(data['IDPERF']!, _idperfMeta));
    } else if (isInserting) {
      context.missing(_idperfMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {cdprfl};
  @override
  i1.Perfil map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Perfil(
      cdprfl: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDPRFL'])!,
      dsprfl: i1.Tafperfil.$converterdsprfl.fromSql(attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}DSPRFL'])!),
      idrest: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}IDREST'])!,
      idperf: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}IDPERF'])!,
    );
  }

  @override
  Tafperfil createAlias(String alias) {
    return Tafperfil(attachedDatabase, alias);
  }

  static i0.TypeConverter<String, String> $converterdsprfl =
      const i2.StringConverter(50);
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(CDPRFL)'];
  @override
  bool get dontWriteConstraints => true;
}

class Perfil extends i0.DataClass implements i0.Insertable<i1.Perfil> {
  final String cdprfl;
  final String dsprfl;
  final String idrest;
  final String idperf;
  const Perfil(
      {required this.cdprfl,
      required this.dsprfl,
      required this.idrest,
      required this.idperf});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['CDPRFL'] = i0.Variable<String>(cdprfl);
    {
      map['DSPRFL'] =
          i0.Variable<String>(i1.Tafperfil.$converterdsprfl.toSql(dsprfl));
    }
    map['IDREST'] = i0.Variable<String>(idrest);
    map['IDPERF'] = i0.Variable<String>(idperf);
    return map;
  }

  i1.TafperfilCompanion toCompanion(bool nullToAbsent) {
    return i1.TafperfilCompanion(
      cdprfl: i0.Value(cdprfl),
      dsprfl: i0.Value(dsprfl),
      idrest: i0.Value(idrest),
      idperf: i0.Value(idperf),
    );
  }

  factory Perfil.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Perfil(
      cdprfl: serializer.fromJson<String>(json['CDPRFL']),
      dsprfl: serializer.fromJson<String>(json['DSPRFL']),
      idrest: serializer.fromJson<String>(json['IDREST']),
      idperf: serializer.fromJson<String>(json['IDPERF']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'CDPRFL': serializer.toJson<String>(cdprfl),
      'DSPRFL': serializer.toJson<String>(dsprfl),
      'IDREST': serializer.toJson<String>(idrest),
      'IDPERF': serializer.toJson<String>(idperf),
    };
  }

  i1.Perfil copyWith(
          {String? cdprfl, String? dsprfl, String? idrest, String? idperf}) =>
      i1.Perfil(
        cdprfl: cdprfl ?? this.cdprfl,
        dsprfl: dsprfl ?? this.dsprfl,
        idrest: idrest ?? this.idrest,
        idperf: idperf ?? this.idperf,
      );
  Perfil copyWithCompanion(i1.TafperfilCompanion data) {
    return Perfil(
      cdprfl: data.cdprfl.present ? data.cdprfl.value : this.cdprfl,
      dsprfl: data.dsprfl.present ? data.dsprfl.value : this.dsprfl,
      idrest: data.idrest.present ? data.idrest.value : this.idrest,
      idperf: data.idperf.present ? data.idperf.value : this.idperf,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Perfil(')
          ..write('cdprfl: $cdprfl, ')
          ..write('dsprfl: $dsprfl, ')
          ..write('idrest: $idrest, ')
          ..write('idperf: $idperf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cdprfl, dsprfl, idrest, idperf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Perfil &&
          other.cdprfl == this.cdprfl &&
          other.dsprfl == this.dsprfl &&
          other.idrest == this.idrest &&
          other.idperf == this.idperf);
}

class TafperfilCompanion extends i0.UpdateCompanion<i1.Perfil> {
  final i0.Value<String> cdprfl;
  final i0.Value<String> dsprfl;
  final i0.Value<String> idrest;
  final i0.Value<String> idperf;
  final i0.Value<int> rowid;
  const TafperfilCompanion({
    this.cdprfl = const i0.Value.absent(),
    this.dsprfl = const i0.Value.absent(),
    this.idrest = const i0.Value.absent(),
    this.idperf = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  TafperfilCompanion.insert({
    required String cdprfl,
    required String dsprfl,
    required String idrest,
    required String idperf,
    this.rowid = const i0.Value.absent(),
  })  : cdprfl = i0.Value(cdprfl),
        dsprfl = i0.Value(dsprfl),
        idrest = i0.Value(idrest),
        idperf = i0.Value(idperf);
  static i0.Insertable<i1.Perfil> custom({
    i0.Expression<String>? cdprfl,
    i0.Expression<String>? dsprfl,
    i0.Expression<String>? idrest,
    i0.Expression<String>? idperf,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (cdprfl != null) 'CDPRFL': cdprfl,
      if (dsprfl != null) 'DSPRFL': dsprfl,
      if (idrest != null) 'IDREST': idrest,
      if (idperf != null) 'IDPERF': idperf,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.TafperfilCompanion copyWith(
      {i0.Value<String>? cdprfl,
      i0.Value<String>? dsprfl,
      i0.Value<String>? idrest,
      i0.Value<String>? idperf,
      i0.Value<int>? rowid}) {
    return i1.TafperfilCompanion(
      cdprfl: cdprfl ?? this.cdprfl,
      dsprfl: dsprfl ?? this.dsprfl,
      idrest: idrest ?? this.idrest,
      idperf: idperf ?? this.idperf,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (cdprfl.present) {
      map['CDPRFL'] = i0.Variable<String>(cdprfl.value);
    }
    if (dsprfl.present) {
      map['DSPRFL'] = i0.Variable<String>(
          i1.Tafperfil.$converterdsprfl.toSql(dsprfl.value));
    }
    if (idrest.present) {
      map['IDREST'] = i0.Variable<String>(idrest.value);
    }
    if (idperf.present) {
      map['IDPERF'] = i0.Variable<String>(idperf.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TafperfilCompanion(')
          ..write('cdprfl: $cdprfl, ')
          ..write('dsprfl: $dsprfl, ')
          ..write('idrest: $idrest, ')
          ..write('idperf: $idperf, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
