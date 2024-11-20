// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/tafusu.drift.dart' as i1;
import 'package:sales_app/database/helpers/converters.dart' as i2;

typedef $TafusuCreateCompanionBuilder = i1.TafusuCompanion Function({
  required String cdusu,
  required String cdfigu,
  required String cdprfl,
  required String cdeqp,
  required String dsnome,
  required String dslogn,
  required String dssenh,
  required String dseml,
  i0.Value<int> rowid,
});
typedef $TafusuUpdateCompanionBuilder = i1.TafusuCompanion Function({
  i0.Value<String> cdusu,
  i0.Value<String> cdfigu,
  i0.Value<String> cdprfl,
  i0.Value<String> cdeqp,
  i0.Value<String> dsnome,
  i0.Value<String> dslogn,
  i0.Value<String> dssenh,
  i0.Value<String> dseml,
  i0.Value<int> rowid,
});

class $TafusuFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafusu> {
  $TafusuFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get cdusu => $composableBuilder(
      column: $table.cdusu, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdfigu => $composableBuilder(
      column: $table.cdfigu, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdeqp => $composableBuilder(
      column: $table.cdeqp, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnWithTypeConverterFilters<String, String, String> get dsnome =>
      $composableBuilder(
          column: $table.dsnome,
          builder: (column) => i0.ColumnWithTypeConverterFilters(column));

  i0.ColumnWithTypeConverterFilters<String, String, String> get dslogn =>
      $composableBuilder(
          column: $table.dslogn,
          builder: (column) => i0.ColumnWithTypeConverterFilters(column));

  i0.ColumnFilters<String> get dssenh => $composableBuilder(
      column: $table.dssenh, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnWithTypeConverterFilters<String, String, String> get dseml =>
      $composableBuilder(
          column: $table.dseml,
          builder: (column) => i0.ColumnWithTypeConverterFilters(column));
}

class $TafusuOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafusu> {
  $TafusuOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get cdusu => $composableBuilder(
      column: $table.cdusu, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdfigu => $composableBuilder(
      column: $table.cdfigu, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdeqp => $composableBuilder(
      column: $table.cdeqp, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dsnome => $composableBuilder(
      column: $table.dsnome, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dslogn => $composableBuilder(
      column: $table.dslogn, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dssenh => $composableBuilder(
      column: $table.dssenh, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dseml => $composableBuilder(
      column: $table.dseml, builder: (column) => i0.ColumnOrderings(column));
}

class $TafusuAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafusu> {
  $TafusuAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get cdusu =>
      $composableBuilder(column: $table.cdusu, builder: (column) => column);

  i0.GeneratedColumn<String> get cdfigu =>
      $composableBuilder(column: $table.cdfigu, builder: (column) => column);

  i0.GeneratedColumn<String> get cdprfl =>
      $composableBuilder(column: $table.cdprfl, builder: (column) => column);

  i0.GeneratedColumn<String> get cdeqp =>
      $composableBuilder(column: $table.cdeqp, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<String, String> get dsnome =>
      $composableBuilder(column: $table.dsnome, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<String, String> get dslogn =>
      $composableBuilder(column: $table.dslogn, builder: (column) => column);

  i0.GeneratedColumn<String> get dssenh =>
      $composableBuilder(column: $table.dssenh, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<String, String> get dseml =>
      $composableBuilder(column: $table.dseml, builder: (column) => column);
}

class $TafusuTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Tafusu,
    i1.Usuario,
    i1.$TafusuFilterComposer,
    i1.$TafusuOrderingComposer,
    i1.$TafusuAnnotationComposer,
    $TafusuCreateCompanionBuilder,
    $TafusuUpdateCompanionBuilder,
    (
      i1.Usuario,
      i0.BaseReferences<i0.GeneratedDatabase, i1.Tafusu, i1.Usuario>
    ),
    i1.Usuario,
    i0.PrefetchHooks Function()> {
  $TafusuTableManager(i0.GeneratedDatabase db, i1.Tafusu table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TafusuFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TafusuOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TafusuAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String> cdusu = const i0.Value.absent(),
            i0.Value<String> cdfigu = const i0.Value.absent(),
            i0.Value<String> cdprfl = const i0.Value.absent(),
            i0.Value<String> cdeqp = const i0.Value.absent(),
            i0.Value<String> dsnome = const i0.Value.absent(),
            i0.Value<String> dslogn = const i0.Value.absent(),
            i0.Value<String> dssenh = const i0.Value.absent(),
            i0.Value<String> dseml = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafusuCompanion(
            cdusu: cdusu,
            cdfigu: cdfigu,
            cdprfl: cdprfl,
            cdeqp: cdeqp,
            dsnome: dsnome,
            dslogn: dslogn,
            dssenh: dssenh,
            dseml: dseml,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cdusu,
            required String cdfigu,
            required String cdprfl,
            required String cdeqp,
            required String dsnome,
            required String dslogn,
            required String dssenh,
            required String dseml,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafusuCompanion.insert(
            cdusu: cdusu,
            cdfigu: cdfigu,
            cdprfl: cdprfl,
            cdeqp: cdeqp,
            dsnome: dsnome,
            dslogn: dslogn,
            dssenh: dssenh,
            dseml: dseml,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TafusuProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Tafusu,
    i1.Usuario,
    i1.$TafusuFilterComposer,
    i1.$TafusuOrderingComposer,
    i1.$TafusuAnnotationComposer,
    $TafusuCreateCompanionBuilder,
    $TafusuUpdateCompanionBuilder,
    (
      i1.Usuario,
      i0.BaseReferences<i0.GeneratedDatabase, i1.Tafusu, i1.Usuario>
    ),
    i1.Usuario,
    i0.PrefetchHooks Function()>;

class Tafusu extends i0.Table with i0.TableInfo<Tafusu, i1.Usuario> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tafusu(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _cdusuMeta =
      const i0.VerificationMeta('cdusu');
  late final i0.GeneratedColumn<String> cdusu = i0.GeneratedColumn<String>(
      'CDUSU', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _cdfiguMeta =
      const i0.VerificationMeta('cdfigu');
  late final i0.GeneratedColumn<String> cdfigu = i0.GeneratedColumn<String>(
      'CDFIGU', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _cdprflMeta =
      const i0.VerificationMeta('cdprfl');
  late final i0.GeneratedColumn<String> cdprfl = i0.GeneratedColumn<String>(
      'CDPRFL', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _cdeqpMeta =
      const i0.VerificationMeta('cdeqp');
  late final i0.GeneratedColumn<String> cdeqp = i0.GeneratedColumn<String>(
      'CDEQP', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _dsnomeMeta =
      const i0.VerificationMeta('dsnome');
  late final i0.GeneratedColumnWithTypeConverter<String, String> dsnome =
      i0.GeneratedColumn<String>('DSNOME', aliasedName, false,
              type: i0.DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<String>(i1.Tafusu.$converterdsnome);
  static const i0.VerificationMeta _dslognMeta =
      const i0.VerificationMeta('dslogn');
  late final i0.GeneratedColumnWithTypeConverter<String, String> dslogn =
      i0.GeneratedColumn<String>('DSLOGN', aliasedName, false,
              type: i0.DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<String>(i1.Tafusu.$converterdslogn);
  static const i0.VerificationMeta _dssenhMeta =
      const i0.VerificationMeta('dssenh');
  late final i0.GeneratedColumn<String> dssenh = i0.GeneratedColumn<String>(
      'DSSENH', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _dsemlMeta =
      const i0.VerificationMeta('dseml');
  late final i0.GeneratedColumnWithTypeConverter<String, String> dseml =
      i0.GeneratedColumn<String>('DSEML', aliasedName, false,
              type: i0.DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<String>(i1.Tafusu.$converterdseml);
  @override
  List<i0.GeneratedColumn> get $columns =>
      [cdusu, cdfigu, cdprfl, cdeqp, dsnome, dslogn, dssenh, dseml];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafusu';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Usuario> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CDUSU')) {
      context.handle(
          _cdusuMeta, cdusu.isAcceptableOrUnknown(data['CDUSU']!, _cdusuMeta));
    } else if (isInserting) {
      context.missing(_cdusuMeta);
    }
    if (data.containsKey('CDFIGU')) {
      context.handle(_cdfiguMeta,
          cdfigu.isAcceptableOrUnknown(data['CDFIGU']!, _cdfiguMeta));
    } else if (isInserting) {
      context.missing(_cdfiguMeta);
    }
    if (data.containsKey('CDPRFL')) {
      context.handle(_cdprflMeta,
          cdprfl.isAcceptableOrUnknown(data['CDPRFL']!, _cdprflMeta));
    } else if (isInserting) {
      context.missing(_cdprflMeta);
    }
    if (data.containsKey('CDEQP')) {
      context.handle(
          _cdeqpMeta, cdeqp.isAcceptableOrUnknown(data['CDEQP']!, _cdeqpMeta));
    } else if (isInserting) {
      context.missing(_cdeqpMeta);
    }
    context.handle(_dsnomeMeta, const i0.VerificationResult.success());
    context.handle(_dslognMeta, const i0.VerificationResult.success());
    if (data.containsKey('DSSENH')) {
      context.handle(_dssenhMeta,
          dssenh.isAcceptableOrUnknown(data['DSSENH']!, _dssenhMeta));
    } else if (isInserting) {
      context.missing(_dssenhMeta);
    }
    context.handle(_dsemlMeta, const i0.VerificationResult.success());
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {cdusu};
  @override
  i1.Usuario map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Usuario(
      cdusu: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDUSU'])!,
      cdfigu: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDFIGU'])!,
      cdprfl: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDPRFL'])!,
      cdeqp: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDEQP'])!,
      dsnome: i1.Tafusu.$converterdsnome.fromSql(attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}DSNOME'])!),
      dslogn: i1.Tafusu.$converterdslogn.fromSql(attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}DSLOGN'])!),
      dssenh: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}DSSENH'])!,
      dseml: i1.Tafusu.$converterdseml.fromSql(attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}DSEML'])!),
    );
  }

  @override
  Tafusu createAlias(String alias) {
    return Tafusu(attachedDatabase, alias);
  }

  static i0.TypeConverter<String, String> $converterdsnome =
      const i2.StringConverter(50);
  static i0.TypeConverter<String, String> $converterdslogn =
      const i2.StringConverter(50);
  static i0.TypeConverter<String, String> $converterdseml =
      const i2.StringConverter(128);
  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY(CDUSU)',
        'FOREIGN KEY(CDFIGU, CDPRFL)REFERENCES TAFFIGURAPERFIL(CDFIGU, CDPRFL)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Usuario extends i0.DataClass implements i0.Insertable<i1.Usuario> {
  final String cdusu;
  final String cdfigu;
  final String cdprfl;
  final String cdeqp;
  final String dsnome;
  final String dslogn;
  final String dssenh;
  final String dseml;
  const Usuario(
      {required this.cdusu,
      required this.cdfigu,
      required this.cdprfl,
      required this.cdeqp,
      required this.dsnome,
      required this.dslogn,
      required this.dssenh,
      required this.dseml});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['CDUSU'] = i0.Variable<String>(cdusu);
    map['CDFIGU'] = i0.Variable<String>(cdfigu);
    map['CDPRFL'] = i0.Variable<String>(cdprfl);
    map['CDEQP'] = i0.Variable<String>(cdeqp);
    {
      map['DSNOME'] =
          i0.Variable<String>(i1.Tafusu.$converterdsnome.toSql(dsnome));
    }
    {
      map['DSLOGN'] =
          i0.Variable<String>(i1.Tafusu.$converterdslogn.toSql(dslogn));
    }
    map['DSSENH'] = i0.Variable<String>(dssenh);
    {
      map['DSEML'] =
          i0.Variable<String>(i1.Tafusu.$converterdseml.toSql(dseml));
    }
    return map;
  }

  i1.TafusuCompanion toCompanion(bool nullToAbsent) {
    return i1.TafusuCompanion(
      cdusu: i0.Value(cdusu),
      cdfigu: i0.Value(cdfigu),
      cdprfl: i0.Value(cdprfl),
      cdeqp: i0.Value(cdeqp),
      dsnome: i0.Value(dsnome),
      dslogn: i0.Value(dslogn),
      dssenh: i0.Value(dssenh),
      dseml: i0.Value(dseml),
    );
  }

  factory Usuario.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Usuario(
      cdusu: serializer.fromJson<String>(json['CDUSU']),
      cdfigu: serializer.fromJson<String>(json['CDFIGU']),
      cdprfl: serializer.fromJson<String>(json['CDPRFL']),
      cdeqp: serializer.fromJson<String>(json['CDEQP']),
      dsnome: serializer.fromJson<String>(json['DSNOME']),
      dslogn: serializer.fromJson<String>(json['DSLOGN']),
      dssenh: serializer.fromJson<String>(json['DSSENH']),
      dseml: serializer.fromJson<String>(json['DSEML']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'CDUSU': serializer.toJson<String>(cdusu),
      'CDFIGU': serializer.toJson<String>(cdfigu),
      'CDPRFL': serializer.toJson<String>(cdprfl),
      'CDEQP': serializer.toJson<String>(cdeqp),
      'DSNOME': serializer.toJson<String>(dsnome),
      'DSLOGN': serializer.toJson<String>(dslogn),
      'DSSENH': serializer.toJson<String>(dssenh),
      'DSEML': serializer.toJson<String>(dseml),
    };
  }

  i1.Usuario copyWith(
          {String? cdusu,
          String? cdfigu,
          String? cdprfl,
          String? cdeqp,
          String? dsnome,
          String? dslogn,
          String? dssenh,
          String? dseml}) =>
      i1.Usuario(
        cdusu: cdusu ?? this.cdusu,
        cdfigu: cdfigu ?? this.cdfigu,
        cdprfl: cdprfl ?? this.cdprfl,
        cdeqp: cdeqp ?? this.cdeqp,
        dsnome: dsnome ?? this.dsnome,
        dslogn: dslogn ?? this.dslogn,
        dssenh: dssenh ?? this.dssenh,
        dseml: dseml ?? this.dseml,
      );
  Usuario copyWithCompanion(i1.TafusuCompanion data) {
    return Usuario(
      cdusu: data.cdusu.present ? data.cdusu.value : this.cdusu,
      cdfigu: data.cdfigu.present ? data.cdfigu.value : this.cdfigu,
      cdprfl: data.cdprfl.present ? data.cdprfl.value : this.cdprfl,
      cdeqp: data.cdeqp.present ? data.cdeqp.value : this.cdeqp,
      dsnome: data.dsnome.present ? data.dsnome.value : this.dsnome,
      dslogn: data.dslogn.present ? data.dslogn.value : this.dslogn,
      dssenh: data.dssenh.present ? data.dssenh.value : this.dssenh,
      dseml: data.dseml.present ? data.dseml.value : this.dseml,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Usuario(')
          ..write('cdusu: $cdusu, ')
          ..write('cdfigu: $cdfigu, ')
          ..write('cdprfl: $cdprfl, ')
          ..write('cdeqp: $cdeqp, ')
          ..write('dsnome: $dsnome, ')
          ..write('dslogn: $dslogn, ')
          ..write('dssenh: $dssenh, ')
          ..write('dseml: $dseml')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(cdusu, cdfigu, cdprfl, cdeqp, dsnome, dslogn, dssenh, dseml);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Usuario &&
          other.cdusu == this.cdusu &&
          other.cdfigu == this.cdfigu &&
          other.cdprfl == this.cdprfl &&
          other.cdeqp == this.cdeqp &&
          other.dsnome == this.dsnome &&
          other.dslogn == this.dslogn &&
          other.dssenh == this.dssenh &&
          other.dseml == this.dseml);
}

class TafusuCompanion extends i0.UpdateCompanion<i1.Usuario> {
  final i0.Value<String> cdusu;
  final i0.Value<String> cdfigu;
  final i0.Value<String> cdprfl;
  final i0.Value<String> cdeqp;
  final i0.Value<String> dsnome;
  final i0.Value<String> dslogn;
  final i0.Value<String> dssenh;
  final i0.Value<String> dseml;
  final i0.Value<int> rowid;
  const TafusuCompanion({
    this.cdusu = const i0.Value.absent(),
    this.cdfigu = const i0.Value.absent(),
    this.cdprfl = const i0.Value.absent(),
    this.cdeqp = const i0.Value.absent(),
    this.dsnome = const i0.Value.absent(),
    this.dslogn = const i0.Value.absent(),
    this.dssenh = const i0.Value.absent(),
    this.dseml = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  TafusuCompanion.insert({
    required String cdusu,
    required String cdfigu,
    required String cdprfl,
    required String cdeqp,
    required String dsnome,
    required String dslogn,
    required String dssenh,
    required String dseml,
    this.rowid = const i0.Value.absent(),
  })  : cdusu = i0.Value(cdusu),
        cdfigu = i0.Value(cdfigu),
        cdprfl = i0.Value(cdprfl),
        cdeqp = i0.Value(cdeqp),
        dsnome = i0.Value(dsnome),
        dslogn = i0.Value(dslogn),
        dssenh = i0.Value(dssenh),
        dseml = i0.Value(dseml);
  static i0.Insertable<i1.Usuario> custom({
    i0.Expression<String>? cdusu,
    i0.Expression<String>? cdfigu,
    i0.Expression<String>? cdprfl,
    i0.Expression<String>? cdeqp,
    i0.Expression<String>? dsnome,
    i0.Expression<String>? dslogn,
    i0.Expression<String>? dssenh,
    i0.Expression<String>? dseml,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (cdusu != null) 'CDUSU': cdusu,
      if (cdfigu != null) 'CDFIGU': cdfigu,
      if (cdprfl != null) 'CDPRFL': cdprfl,
      if (cdeqp != null) 'CDEQP': cdeqp,
      if (dsnome != null) 'DSNOME': dsnome,
      if (dslogn != null) 'DSLOGN': dslogn,
      if (dssenh != null) 'DSSENH': dssenh,
      if (dseml != null) 'DSEML': dseml,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.TafusuCompanion copyWith(
      {i0.Value<String>? cdusu,
      i0.Value<String>? cdfigu,
      i0.Value<String>? cdprfl,
      i0.Value<String>? cdeqp,
      i0.Value<String>? dsnome,
      i0.Value<String>? dslogn,
      i0.Value<String>? dssenh,
      i0.Value<String>? dseml,
      i0.Value<int>? rowid}) {
    return i1.TafusuCompanion(
      cdusu: cdusu ?? this.cdusu,
      cdfigu: cdfigu ?? this.cdfigu,
      cdprfl: cdprfl ?? this.cdprfl,
      cdeqp: cdeqp ?? this.cdeqp,
      dsnome: dsnome ?? this.dsnome,
      dslogn: dslogn ?? this.dslogn,
      dssenh: dssenh ?? this.dssenh,
      dseml: dseml ?? this.dseml,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (cdusu.present) {
      map['CDUSU'] = i0.Variable<String>(cdusu.value);
    }
    if (cdfigu.present) {
      map['CDFIGU'] = i0.Variable<String>(cdfigu.value);
    }
    if (cdprfl.present) {
      map['CDPRFL'] = i0.Variable<String>(cdprfl.value);
    }
    if (cdeqp.present) {
      map['CDEQP'] = i0.Variable<String>(cdeqp.value);
    }
    if (dsnome.present) {
      map['DSNOME'] =
          i0.Variable<String>(i1.Tafusu.$converterdsnome.toSql(dsnome.value));
    }
    if (dslogn.present) {
      map['DSLOGN'] =
          i0.Variable<String>(i1.Tafusu.$converterdslogn.toSql(dslogn.value));
    }
    if (dssenh.present) {
      map['DSSENH'] = i0.Variable<String>(dssenh.value);
    }
    if (dseml.present) {
      map['DSEML'] =
          i0.Variable<String>(i1.Tafusu.$converterdseml.toSql(dseml.value));
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TafusuCompanion(')
          ..write('cdusu: $cdusu, ')
          ..write('cdfigu: $cdfigu, ')
          ..write('cdprfl: $cdprfl, ')
          ..write('cdeqp: $cdeqp, ')
          ..write('dsnome: $dsnome, ')
          ..write('dslogn: $dslogn, ')
          ..write('dssenh: $dssenh, ')
          ..write('dseml: $dseml, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
