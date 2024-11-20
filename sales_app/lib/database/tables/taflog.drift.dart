// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/taflog.drift.dart' as i1;

typedef $TaflogCreateCompanionBuilder = i1.TaflogCompanion Function({
  i0.Value<String?> cdrglg,
  i0.Value<String?> cdusu,
  i0.Value<String?> cdmdsi,
  i0.Value<DateTime?> dthrlg,
  i0.Value<String?> dsacao,
  i0.Value<String?> dsmslg,
  i0.Value<String?> cdunid,
  i0.Value<String?> cdrota,
  i0.Value<String?> idsts,
  i0.Value<int> rowid,
});
typedef $TaflogUpdateCompanionBuilder = i1.TaflogCompanion Function({
  i0.Value<String?> cdrglg,
  i0.Value<String?> cdusu,
  i0.Value<String?> cdmdsi,
  i0.Value<DateTime?> dthrlg,
  i0.Value<String?> dsacao,
  i0.Value<String?> dsmslg,
  i0.Value<String?> cdunid,
  i0.Value<String?> cdrota,
  i0.Value<String?> idsts,
  i0.Value<int> rowid,
});

class $TaflogFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taflog> {
  $TaflogFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get cdrglg => $composableBuilder(
      column: $table.cdrglg, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdusu => $composableBuilder(
      column: $table.cdusu, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdmdsi => $composableBuilder(
      column: $table.cdmdsi, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get dthrlg => $composableBuilder(
      column: $table.dthrlg, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get dsacao => $composableBuilder(
      column: $table.dsacao, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get dsmslg => $composableBuilder(
      column: $table.dsmslg, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdunid => $composableBuilder(
      column: $table.cdunid, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdrota => $composableBuilder(
      column: $table.cdrota, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get idsts => $composableBuilder(
      column: $table.idsts, builder: (column) => i0.ColumnFilters(column));
}

class $TaflogOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taflog> {
  $TaflogOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get cdrglg => $composableBuilder(
      column: $table.cdrglg, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdusu => $composableBuilder(
      column: $table.cdusu, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdmdsi => $composableBuilder(
      column: $table.cdmdsi, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get dthrlg => $composableBuilder(
      column: $table.dthrlg, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dsacao => $composableBuilder(
      column: $table.dsacao, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get dsmslg => $composableBuilder(
      column: $table.dsmslg, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdunid => $composableBuilder(
      column: $table.cdunid, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdrota => $composableBuilder(
      column: $table.cdrota, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get idsts => $composableBuilder(
      column: $table.idsts, builder: (column) => i0.ColumnOrderings(column));
}

class $TaflogAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taflog> {
  $TaflogAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get cdrglg =>
      $composableBuilder(column: $table.cdrglg, builder: (column) => column);

  i0.GeneratedColumn<String> get cdusu =>
      $composableBuilder(column: $table.cdusu, builder: (column) => column);

  i0.GeneratedColumn<String> get cdmdsi =>
      $composableBuilder(column: $table.cdmdsi, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get dthrlg =>
      $composableBuilder(column: $table.dthrlg, builder: (column) => column);

  i0.GeneratedColumn<String> get dsacao =>
      $composableBuilder(column: $table.dsacao, builder: (column) => column);

  i0.GeneratedColumn<String> get dsmslg =>
      $composableBuilder(column: $table.dsmslg, builder: (column) => column);

  i0.GeneratedColumn<String> get cdunid =>
      $composableBuilder(column: $table.cdunid, builder: (column) => column);

  i0.GeneratedColumn<String> get cdrota =>
      $composableBuilder(column: $table.cdrota, builder: (column) => column);

  i0.GeneratedColumn<String> get idsts =>
      $composableBuilder(column: $table.idsts, builder: (column) => column);
}

class $TaflogTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Taflog,
    i1.Log,
    i1.$TaflogFilterComposer,
    i1.$TaflogOrderingComposer,
    i1.$TaflogAnnotationComposer,
    $TaflogCreateCompanionBuilder,
    $TaflogUpdateCompanionBuilder,
    (i1.Log, i0.BaseReferences<i0.GeneratedDatabase, i1.Taflog, i1.Log>),
    i1.Log,
    i0.PrefetchHooks Function()> {
  $TaflogTableManager(i0.GeneratedDatabase db, i1.Taflog table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TaflogFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TaflogOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TaflogAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String?> cdrglg = const i0.Value.absent(),
            i0.Value<String?> cdusu = const i0.Value.absent(),
            i0.Value<String?> cdmdsi = const i0.Value.absent(),
            i0.Value<DateTime?> dthrlg = const i0.Value.absent(),
            i0.Value<String?> dsacao = const i0.Value.absent(),
            i0.Value<String?> dsmslg = const i0.Value.absent(),
            i0.Value<String?> cdunid = const i0.Value.absent(),
            i0.Value<String?> cdrota = const i0.Value.absent(),
            i0.Value<String?> idsts = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TaflogCompanion(
            cdrglg: cdrglg,
            cdusu: cdusu,
            cdmdsi: cdmdsi,
            dthrlg: dthrlg,
            dsacao: dsacao,
            dsmslg: dsmslg,
            cdunid: cdunid,
            cdrota: cdrota,
            idsts: idsts,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            i0.Value<String?> cdrglg = const i0.Value.absent(),
            i0.Value<String?> cdusu = const i0.Value.absent(),
            i0.Value<String?> cdmdsi = const i0.Value.absent(),
            i0.Value<DateTime?> dthrlg = const i0.Value.absent(),
            i0.Value<String?> dsacao = const i0.Value.absent(),
            i0.Value<String?> dsmslg = const i0.Value.absent(),
            i0.Value<String?> cdunid = const i0.Value.absent(),
            i0.Value<String?> cdrota = const i0.Value.absent(),
            i0.Value<String?> idsts = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TaflogCompanion.insert(
            cdrglg: cdrglg,
            cdusu: cdusu,
            cdmdsi: cdmdsi,
            dthrlg: dthrlg,
            dsacao: dsacao,
            dsmslg: dsmslg,
            cdunid: cdunid,
            cdrota: cdrota,
            idsts: idsts,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TaflogProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Taflog,
    i1.Log,
    i1.$TaflogFilterComposer,
    i1.$TaflogOrderingComposer,
    i1.$TaflogAnnotationComposer,
    $TaflogCreateCompanionBuilder,
    $TaflogUpdateCompanionBuilder,
    (i1.Log, i0.BaseReferences<i0.GeneratedDatabase, i1.Taflog, i1.Log>),
    i1.Log,
    i0.PrefetchHooks Function()>;

class Taflog extends i0.Table with i0.TableInfo<Taflog, i1.Log> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Taflog(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _cdrglgMeta =
      const i0.VerificationMeta('cdrglg');
  late final i0.GeneratedColumn<String> cdrglg = i0.GeneratedColumn<String>(
      'cdrglg', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _cdusuMeta =
      const i0.VerificationMeta('cdusu');
  late final i0.GeneratedColumn<String> cdusu = i0.GeneratedColumn<String>(
      'cdusu', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _cdmdsiMeta =
      const i0.VerificationMeta('cdmdsi');
  late final i0.GeneratedColumn<String> cdmdsi = i0.GeneratedColumn<String>(
      'cdmdsi', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _dthrlgMeta =
      const i0.VerificationMeta('dthrlg');
  late final i0.GeneratedColumn<DateTime> dthrlg = i0.GeneratedColumn<DateTime>(
      'dthrlg', aliasedName, true,
      type: i0.DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _dsacaoMeta =
      const i0.VerificationMeta('dsacao');
  late final i0.GeneratedColumn<String> dsacao = i0.GeneratedColumn<String>(
      'dsacao', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _dsmslgMeta =
      const i0.VerificationMeta('dsmslg');
  late final i0.GeneratedColumn<String> dsmslg = i0.GeneratedColumn<String>(
      'dsmslg', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _cdunidMeta =
      const i0.VerificationMeta('cdunid');
  late final i0.GeneratedColumn<String> cdunid = i0.GeneratedColumn<String>(
      'cdunid', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _cdrotaMeta =
      const i0.VerificationMeta('cdrota');
  late final i0.GeneratedColumn<String> cdrota = i0.GeneratedColumn<String>(
      'cdrota', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _idstsMeta =
      const i0.VerificationMeta('idsts');
  late final i0.GeneratedColumn<String> idsts = i0.GeneratedColumn<String>(
      'idsts', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<i0.GeneratedColumn> get $columns =>
      [cdrglg, cdusu, cdmdsi, dthrlg, dsacao, dsmslg, cdunid, cdrota, idsts];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'taflog';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Log> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cdrglg')) {
      context.handle(_cdrglgMeta,
          cdrglg.isAcceptableOrUnknown(data['cdrglg']!, _cdrglgMeta));
    }
    if (data.containsKey('cdusu')) {
      context.handle(
          _cdusuMeta, cdusu.isAcceptableOrUnknown(data['cdusu']!, _cdusuMeta));
    }
    if (data.containsKey('cdmdsi')) {
      context.handle(_cdmdsiMeta,
          cdmdsi.isAcceptableOrUnknown(data['cdmdsi']!, _cdmdsiMeta));
    }
    if (data.containsKey('dthrlg')) {
      context.handle(_dthrlgMeta,
          dthrlg.isAcceptableOrUnknown(data['dthrlg']!, _dthrlgMeta));
    }
    if (data.containsKey('dsacao')) {
      context.handle(_dsacaoMeta,
          dsacao.isAcceptableOrUnknown(data['dsacao']!, _dsacaoMeta));
    }
    if (data.containsKey('dsmslg')) {
      context.handle(_dsmslgMeta,
          dsmslg.isAcceptableOrUnknown(data['dsmslg']!, _dsmslgMeta));
    }
    if (data.containsKey('cdunid')) {
      context.handle(_cdunidMeta,
          cdunid.isAcceptableOrUnknown(data['cdunid']!, _cdunidMeta));
    }
    if (data.containsKey('cdrota')) {
      context.handle(_cdrotaMeta,
          cdrota.isAcceptableOrUnknown(data['cdrota']!, _cdrotaMeta));
    }
    if (data.containsKey('idsts')) {
      context.handle(
          _idstsMeta, idsts.isAcceptableOrUnknown(data['idsts']!, _idstsMeta));
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {cdrglg};
  @override
  i1.Log map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Log(
      cdrglg: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}cdrglg']),
      cdusu: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}cdusu']),
      cdmdsi: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}cdmdsi']),
      dthrlg: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.dateTime, data['${effectivePrefix}dthrlg']),
      dsacao: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}dsacao']),
      dsmslg: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}dsmslg']),
      cdunid: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}cdunid']),
      cdrota: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}cdrota']),
      idsts: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}idsts']),
    );
  }

  @override
  Taflog createAlias(String alias) {
    return Taflog(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(cdrglg)'];
  @override
  bool get dontWriteConstraints => true;
}

class Log extends i0.DataClass implements i0.Insertable<i1.Log> {
  final String? cdrglg;
  final String? cdusu;
  final String? cdmdsi;
  final DateTime? dthrlg;
  final String? dsacao;
  final String? dsmslg;
  final String? cdunid;
  final String? cdrota;
  final String? idsts;
  const Log(
      {this.cdrglg,
      this.cdusu,
      this.cdmdsi,
      this.dthrlg,
      this.dsacao,
      this.dsmslg,
      this.cdunid,
      this.cdrota,
      this.idsts});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (!nullToAbsent || cdrglg != null) {
      map['cdrglg'] = i0.Variable<String>(cdrglg);
    }
    if (!nullToAbsent || cdusu != null) {
      map['cdusu'] = i0.Variable<String>(cdusu);
    }
    if (!nullToAbsent || cdmdsi != null) {
      map['cdmdsi'] = i0.Variable<String>(cdmdsi);
    }
    if (!nullToAbsent || dthrlg != null) {
      map['dthrlg'] = i0.Variable<DateTime>(dthrlg);
    }
    if (!nullToAbsent || dsacao != null) {
      map['dsacao'] = i0.Variable<String>(dsacao);
    }
    if (!nullToAbsent || dsmslg != null) {
      map['dsmslg'] = i0.Variable<String>(dsmslg);
    }
    if (!nullToAbsent || cdunid != null) {
      map['cdunid'] = i0.Variable<String>(cdunid);
    }
    if (!nullToAbsent || cdrota != null) {
      map['cdrota'] = i0.Variable<String>(cdrota);
    }
    if (!nullToAbsent || idsts != null) {
      map['idsts'] = i0.Variable<String>(idsts);
    }
    return map;
  }

  i1.TaflogCompanion toCompanion(bool nullToAbsent) {
    return i1.TaflogCompanion(
      cdrglg: cdrglg == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(cdrglg),
      cdusu: cdusu == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(cdusu),
      cdmdsi: cdmdsi == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(cdmdsi),
      dthrlg: dthrlg == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(dthrlg),
      dsacao: dsacao == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(dsacao),
      dsmslg: dsmslg == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(dsmslg),
      cdunid: cdunid == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(cdunid),
      cdrota: cdrota == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(cdrota),
      idsts: idsts == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(idsts),
    );
  }

  factory Log.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Log(
      cdrglg: serializer.fromJson<String?>(json['cdrglg']),
      cdusu: serializer.fromJson<String?>(json['cdusu']),
      cdmdsi: serializer.fromJson<String?>(json['cdmdsi']),
      dthrlg: serializer.fromJson<DateTime?>(json['dthrlg']),
      dsacao: serializer.fromJson<String?>(json['dsacao']),
      dsmslg: serializer.fromJson<String?>(json['dsmslg']),
      cdunid: serializer.fromJson<String?>(json['cdunid']),
      cdrota: serializer.fromJson<String?>(json['cdrota']),
      idsts: serializer.fromJson<String?>(json['idsts']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cdrglg': serializer.toJson<String?>(cdrglg),
      'cdusu': serializer.toJson<String?>(cdusu),
      'cdmdsi': serializer.toJson<String?>(cdmdsi),
      'dthrlg': serializer.toJson<DateTime?>(dthrlg),
      'dsacao': serializer.toJson<String?>(dsacao),
      'dsmslg': serializer.toJson<String?>(dsmslg),
      'cdunid': serializer.toJson<String?>(cdunid),
      'cdrota': serializer.toJson<String?>(cdrota),
      'idsts': serializer.toJson<String?>(idsts),
    };
  }

  i1.Log copyWith(
          {i0.Value<String?> cdrglg = const i0.Value.absent(),
          i0.Value<String?> cdusu = const i0.Value.absent(),
          i0.Value<String?> cdmdsi = const i0.Value.absent(),
          i0.Value<DateTime?> dthrlg = const i0.Value.absent(),
          i0.Value<String?> dsacao = const i0.Value.absent(),
          i0.Value<String?> dsmslg = const i0.Value.absent(),
          i0.Value<String?> cdunid = const i0.Value.absent(),
          i0.Value<String?> cdrota = const i0.Value.absent(),
          i0.Value<String?> idsts = const i0.Value.absent()}) =>
      i1.Log(
        cdrglg: cdrglg.present ? cdrglg.value : this.cdrglg,
        cdusu: cdusu.present ? cdusu.value : this.cdusu,
        cdmdsi: cdmdsi.present ? cdmdsi.value : this.cdmdsi,
        dthrlg: dthrlg.present ? dthrlg.value : this.dthrlg,
        dsacao: dsacao.present ? dsacao.value : this.dsacao,
        dsmslg: dsmslg.present ? dsmslg.value : this.dsmslg,
        cdunid: cdunid.present ? cdunid.value : this.cdunid,
        cdrota: cdrota.present ? cdrota.value : this.cdrota,
        idsts: idsts.present ? idsts.value : this.idsts,
      );
  Log copyWithCompanion(i1.TaflogCompanion data) {
    return Log(
      cdrglg: data.cdrglg.present ? data.cdrglg.value : this.cdrglg,
      cdusu: data.cdusu.present ? data.cdusu.value : this.cdusu,
      cdmdsi: data.cdmdsi.present ? data.cdmdsi.value : this.cdmdsi,
      dthrlg: data.dthrlg.present ? data.dthrlg.value : this.dthrlg,
      dsacao: data.dsacao.present ? data.dsacao.value : this.dsacao,
      dsmslg: data.dsmslg.present ? data.dsmslg.value : this.dsmslg,
      cdunid: data.cdunid.present ? data.cdunid.value : this.cdunid,
      cdrota: data.cdrota.present ? data.cdrota.value : this.cdrota,
      idsts: data.idsts.present ? data.idsts.value : this.idsts,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Log(')
          ..write('cdrglg: $cdrglg, ')
          ..write('cdusu: $cdusu, ')
          ..write('cdmdsi: $cdmdsi, ')
          ..write('dthrlg: $dthrlg, ')
          ..write('dsacao: $dsacao, ')
          ..write('dsmslg: $dsmslg, ')
          ..write('cdunid: $cdunid, ')
          ..write('cdrota: $cdrota, ')
          ..write('idsts: $idsts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      cdrglg, cdusu, cdmdsi, dthrlg, dsacao, dsmslg, cdunid, cdrota, idsts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Log &&
          other.cdrglg == this.cdrglg &&
          other.cdusu == this.cdusu &&
          other.cdmdsi == this.cdmdsi &&
          other.dthrlg == this.dthrlg &&
          other.dsacao == this.dsacao &&
          other.dsmslg == this.dsmslg &&
          other.cdunid == this.cdunid &&
          other.cdrota == this.cdrota &&
          other.idsts == this.idsts);
}

class TaflogCompanion extends i0.UpdateCompanion<i1.Log> {
  final i0.Value<String?> cdrglg;
  final i0.Value<String?> cdusu;
  final i0.Value<String?> cdmdsi;
  final i0.Value<DateTime?> dthrlg;
  final i0.Value<String?> dsacao;
  final i0.Value<String?> dsmslg;
  final i0.Value<String?> cdunid;
  final i0.Value<String?> cdrota;
  final i0.Value<String?> idsts;
  final i0.Value<int> rowid;
  const TaflogCompanion({
    this.cdrglg = const i0.Value.absent(),
    this.cdusu = const i0.Value.absent(),
    this.cdmdsi = const i0.Value.absent(),
    this.dthrlg = const i0.Value.absent(),
    this.dsacao = const i0.Value.absent(),
    this.dsmslg = const i0.Value.absent(),
    this.cdunid = const i0.Value.absent(),
    this.cdrota = const i0.Value.absent(),
    this.idsts = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  TaflogCompanion.insert({
    this.cdrglg = const i0.Value.absent(),
    this.cdusu = const i0.Value.absent(),
    this.cdmdsi = const i0.Value.absent(),
    this.dthrlg = const i0.Value.absent(),
    this.dsacao = const i0.Value.absent(),
    this.dsmslg = const i0.Value.absent(),
    this.cdunid = const i0.Value.absent(),
    this.cdrota = const i0.Value.absent(),
    this.idsts = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  static i0.Insertable<i1.Log> custom({
    i0.Expression<String>? cdrglg,
    i0.Expression<String>? cdusu,
    i0.Expression<String>? cdmdsi,
    i0.Expression<DateTime>? dthrlg,
    i0.Expression<String>? dsacao,
    i0.Expression<String>? dsmslg,
    i0.Expression<String>? cdunid,
    i0.Expression<String>? cdrota,
    i0.Expression<String>? idsts,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (cdrglg != null) 'cdrglg': cdrglg,
      if (cdusu != null) 'cdusu': cdusu,
      if (cdmdsi != null) 'cdmdsi': cdmdsi,
      if (dthrlg != null) 'dthrlg': dthrlg,
      if (dsacao != null) 'dsacao': dsacao,
      if (dsmslg != null) 'dsmslg': dsmslg,
      if (cdunid != null) 'cdunid': cdunid,
      if (cdrota != null) 'cdrota': cdrota,
      if (idsts != null) 'idsts': idsts,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.TaflogCompanion copyWith(
      {i0.Value<String?>? cdrglg,
      i0.Value<String?>? cdusu,
      i0.Value<String?>? cdmdsi,
      i0.Value<DateTime?>? dthrlg,
      i0.Value<String?>? dsacao,
      i0.Value<String?>? dsmslg,
      i0.Value<String?>? cdunid,
      i0.Value<String?>? cdrota,
      i0.Value<String?>? idsts,
      i0.Value<int>? rowid}) {
    return i1.TaflogCompanion(
      cdrglg: cdrglg ?? this.cdrglg,
      cdusu: cdusu ?? this.cdusu,
      cdmdsi: cdmdsi ?? this.cdmdsi,
      dthrlg: dthrlg ?? this.dthrlg,
      dsacao: dsacao ?? this.dsacao,
      dsmslg: dsmslg ?? this.dsmslg,
      cdunid: cdunid ?? this.cdunid,
      cdrota: cdrota ?? this.cdrota,
      idsts: idsts ?? this.idsts,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (cdrglg.present) {
      map['cdrglg'] = i0.Variable<String>(cdrglg.value);
    }
    if (cdusu.present) {
      map['cdusu'] = i0.Variable<String>(cdusu.value);
    }
    if (cdmdsi.present) {
      map['cdmdsi'] = i0.Variable<String>(cdmdsi.value);
    }
    if (dthrlg.present) {
      map['dthrlg'] = i0.Variable<DateTime>(dthrlg.value);
    }
    if (dsacao.present) {
      map['dsacao'] = i0.Variable<String>(dsacao.value);
    }
    if (dsmslg.present) {
      map['dsmslg'] = i0.Variable<String>(dsmslg.value);
    }
    if (cdunid.present) {
      map['cdunid'] = i0.Variable<String>(cdunid.value);
    }
    if (cdrota.present) {
      map['cdrota'] = i0.Variable<String>(cdrota.value);
    }
    if (idsts.present) {
      map['idsts'] = i0.Variable<String>(idsts.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaflogCompanion(')
          ..write('cdrglg: $cdrglg, ')
          ..write('cdusu: $cdusu, ')
          ..write('cdmdsi: $cdmdsi, ')
          ..write('dthrlg: $dthrlg, ')
          ..write('dsacao: $dsacao, ')
          ..write('dsmslg: $dsmslg, ')
          ..write('cdunid: $cdunid, ')
          ..write('cdrota: $cdrota, ')
          ..write('idsts: $idsts, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
