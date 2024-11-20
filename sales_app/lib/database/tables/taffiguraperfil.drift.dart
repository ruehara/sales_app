// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/taffiguraperfil.drift.dart' as i1;

typedef $TaffiguraperfilCreateCompanionBuilder = i1.TaffiguraperfilCompanion
    Function({
  required String cdfigu,
  required String cdprfl,
  i0.Value<int> rowid,
});
typedef $TaffiguraperfilUpdateCompanionBuilder = i1.TaffiguraperfilCompanion
    Function({
  i0.Value<String> cdfigu,
  i0.Value<String> cdprfl,
  i0.Value<int> rowid,
});

class $TaffiguraperfilFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taffiguraperfil> {
  $TaffiguraperfilFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get cdfigu => $composableBuilder(
      column: $table.cdfigu, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnFilters(column));
}

class $TaffiguraperfilOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taffiguraperfil> {
  $TaffiguraperfilOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get cdfigu => $composableBuilder(
      column: $table.cdfigu, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get cdprfl => $composableBuilder(
      column: $table.cdprfl, builder: (column) => i0.ColumnOrderings(column));
}

class $TaffiguraperfilAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Taffiguraperfil> {
  $TaffiguraperfilAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get cdfigu =>
      $composableBuilder(column: $table.cdfigu, builder: (column) => column);

  i0.GeneratedColumn<String> get cdprfl =>
      $composableBuilder(column: $table.cdprfl, builder: (column) => column);
}

class $TaffiguraperfilTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Taffiguraperfil,
    i1.FiguraPerfil,
    i1.$TaffiguraperfilFilterComposer,
    i1.$TaffiguraperfilOrderingComposer,
    i1.$TaffiguraperfilAnnotationComposer,
    $TaffiguraperfilCreateCompanionBuilder,
    $TaffiguraperfilUpdateCompanionBuilder,
    (
      i1.FiguraPerfil,
      i0
      .BaseReferences<i0.GeneratedDatabase, i1.Taffiguraperfil, i1.FiguraPerfil>
    ),
    i1.FiguraPerfil,
    i0.PrefetchHooks Function()> {
  $TaffiguraperfilTableManager(
      i0.GeneratedDatabase db, i1.Taffiguraperfil table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TaffiguraperfilFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TaffiguraperfilOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TaffiguraperfilAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String> cdfigu = const i0.Value.absent(),
            i0.Value<String> cdprfl = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TaffiguraperfilCompanion(
            cdfigu: cdfigu,
            cdprfl: cdprfl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cdfigu,
            required String cdprfl,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TaffiguraperfilCompanion.insert(
            cdfigu: cdfigu,
            cdprfl: cdprfl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TaffiguraperfilProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Taffiguraperfil,
    i1.FiguraPerfil,
    i1.$TaffiguraperfilFilterComposer,
    i1.$TaffiguraperfilOrderingComposer,
    i1.$TaffiguraperfilAnnotationComposer,
    $TaffiguraperfilCreateCompanionBuilder,
    $TaffiguraperfilUpdateCompanionBuilder,
    (
      i1.FiguraPerfil,
      i0
      .BaseReferences<i0.GeneratedDatabase, i1.Taffiguraperfil, i1.FiguraPerfil>
    ),
    i1.FiguraPerfil,
    i0.PrefetchHooks Function()>;

class Taffiguraperfil extends i0.Table
    with i0.TableInfo<Taffiguraperfil, i1.FiguraPerfil> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Taffiguraperfil(this.attachedDatabase, [this._alias]);
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
  @override
  List<i0.GeneratedColumn> get $columns => [cdfigu, cdprfl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'taffiguraperfil';
  @override
  i0.VerificationContext validateIntegrity(
      i0.Insertable<i1.FiguraPerfil> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
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
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {cdfigu, cdprfl};
  @override
  i1.FiguraPerfil map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.FiguraPerfil(
      cdfigu: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDFIGU'])!,
      cdprfl: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}CDPRFL'])!,
    );
  }

  @override
  Taffiguraperfil createAlias(String alias) {
    return Taffiguraperfil(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY(CDFIGU, CDPRFL)',
        'FOREIGN KEY(CDPRFL)REFERENCES TAFPERFIL(CDPRFL)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class FiguraPerfil extends i0.DataClass
    implements i0.Insertable<i1.FiguraPerfil> {
  final String cdfigu;
  final String cdprfl;
  const FiguraPerfil({required this.cdfigu, required this.cdprfl});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['CDFIGU'] = i0.Variable<String>(cdfigu);
    map['CDPRFL'] = i0.Variable<String>(cdprfl);
    return map;
  }

  i1.TaffiguraperfilCompanion toCompanion(bool nullToAbsent) {
    return i1.TaffiguraperfilCompanion(
      cdfigu: i0.Value(cdfigu),
      cdprfl: i0.Value(cdprfl),
    );
  }

  factory FiguraPerfil.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return FiguraPerfil(
      cdfigu: serializer.fromJson<String>(json['CDFIGU']),
      cdprfl: serializer.fromJson<String>(json['CDPRFL']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'CDFIGU': serializer.toJson<String>(cdfigu),
      'CDPRFL': serializer.toJson<String>(cdprfl),
    };
  }

  i1.FiguraPerfil copyWith({String? cdfigu, String? cdprfl}) => i1.FiguraPerfil(
        cdfigu: cdfigu ?? this.cdfigu,
        cdprfl: cdprfl ?? this.cdprfl,
      );
  FiguraPerfil copyWithCompanion(i1.TaffiguraperfilCompanion data) {
    return FiguraPerfil(
      cdfigu: data.cdfigu.present ? data.cdfigu.value : this.cdfigu,
      cdprfl: data.cdprfl.present ? data.cdprfl.value : this.cdprfl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FiguraPerfil(')
          ..write('cdfigu: $cdfigu, ')
          ..write('cdprfl: $cdprfl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cdfigu, cdprfl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.FiguraPerfil &&
          other.cdfigu == this.cdfigu &&
          other.cdprfl == this.cdprfl);
}

class TaffiguraperfilCompanion extends i0.UpdateCompanion<i1.FiguraPerfil> {
  final i0.Value<String> cdfigu;
  final i0.Value<String> cdprfl;
  final i0.Value<int> rowid;
  const TaffiguraperfilCompanion({
    this.cdfigu = const i0.Value.absent(),
    this.cdprfl = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  TaffiguraperfilCompanion.insert({
    required String cdfigu,
    required String cdprfl,
    this.rowid = const i0.Value.absent(),
  })  : cdfigu = i0.Value(cdfigu),
        cdprfl = i0.Value(cdprfl);
  static i0.Insertable<i1.FiguraPerfil> custom({
    i0.Expression<String>? cdfigu,
    i0.Expression<String>? cdprfl,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (cdfigu != null) 'CDFIGU': cdfigu,
      if (cdprfl != null) 'CDPRFL': cdprfl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.TaffiguraperfilCompanion copyWith(
      {i0.Value<String>? cdfigu,
      i0.Value<String>? cdprfl,
      i0.Value<int>? rowid}) {
    return i1.TaffiguraperfilCompanion(
      cdfigu: cdfigu ?? this.cdfigu,
      cdprfl: cdprfl ?? this.cdprfl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (cdfigu.present) {
      map['CDFIGU'] = i0.Variable<String>(cdfigu.value);
    }
    if (cdprfl.present) {
      map['CDPRFL'] = i0.Variable<String>(cdprfl.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaffiguraperfilCompanion(')
          ..write('cdfigu: $cdfigu, ')
          ..write('cdprfl: $cdprfl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
