// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/tafcores.drift.dart' as i1;
import 'package:drift/internal/modular.dart' as i2;

typedef $TafcolorsCreateCompanionBuilder = i1.TafcolorsCompanion Function({
  required String id,
  required int alpha,
  required int red,
  required int green,
  required int blue,
  i0.Value<int> rowid,
});
typedef $TafcolorsUpdateCompanionBuilder = i1.TafcolorsCompanion Function({
  i0.Value<String> id,
  i0.Value<int> alpha,
  i0.Value<int> red,
  i0.Value<int> green,
  i0.Value<int> blue,
  i0.Value<int> rowid,
});

class $TafcolorsFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafcolors> {
  $TafcolorsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<int> get alpha => $composableBuilder(
      column: $table.alpha, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<int> get red => $composableBuilder(
      column: $table.red, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<int> get green => $composableBuilder(
      column: $table.green, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<int> get blue => $composableBuilder(
      column: $table.blue, builder: (column) => i0.ColumnFilters(column));
}

class $TafcolorsOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafcolors> {
  $TafcolorsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<int> get alpha => $composableBuilder(
      column: $table.alpha, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<int> get red => $composableBuilder(
      column: $table.red, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<int> get green => $composableBuilder(
      column: $table.green, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<int> get blue => $composableBuilder(
      column: $table.blue, builder: (column) => i0.ColumnOrderings(column));
}

class $TafcolorsAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafcolors> {
  $TafcolorsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<int> get alpha =>
      $composableBuilder(column: $table.alpha, builder: (column) => column);

  i0.GeneratedColumn<int> get red =>
      $composableBuilder(column: $table.red, builder: (column) => column);

  i0.GeneratedColumn<int> get green =>
      $composableBuilder(column: $table.green, builder: (column) => column);

  i0.GeneratedColumn<int> get blue =>
      $composableBuilder(column: $table.blue, builder: (column) => column);
}

class $TafcolorsTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Tafcolors,
    i1.Color,
    i1.$TafcolorsFilterComposer,
    i1.$TafcolorsOrderingComposer,
    i1.$TafcolorsAnnotationComposer,
    $TafcolorsCreateCompanionBuilder,
    $TafcolorsUpdateCompanionBuilder,
    (i1.Color, i0.BaseReferences<i0.GeneratedDatabase, i1.Tafcolors, i1.Color>),
    i1.Color,
    i0.PrefetchHooks Function()> {
  $TafcolorsTableManager(i0.GeneratedDatabase db, i1.Tafcolors table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TafcolorsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TafcolorsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TafcolorsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String> id = const i0.Value.absent(),
            i0.Value<int> alpha = const i0.Value.absent(),
            i0.Value<int> red = const i0.Value.absent(),
            i0.Value<int> green = const i0.Value.absent(),
            i0.Value<int> blue = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafcolorsCompanion(
            id: id,
            alpha: alpha,
            red: red,
            green: green,
            blue: blue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int alpha,
            required int red,
            required int green,
            required int blue,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.TafcolorsCompanion.insert(
            id: id,
            alpha: alpha,
            red: red,
            green: green,
            blue: blue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TafcolorsProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Tafcolors,
    i1.Color,
    i1.$TafcolorsFilterComposer,
    i1.$TafcolorsOrderingComposer,
    i1.$TafcolorsAnnotationComposer,
    $TafcolorsCreateCompanionBuilder,
    $TafcolorsUpdateCompanionBuilder,
    (i1.Color, i0.BaseReferences<i0.GeneratedDatabase, i1.Tafcolors, i1.Color>),
    i1.Color,
    i0.PrefetchHooks Function()>;

class Tafcolors extends i0.Table with i0.TableInfo<Tafcolors, i1.Color> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tafcolors(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  late final i0.GeneratedColumn<String> id = i0.GeneratedColumn<String>(
      'id', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const i0.VerificationMeta _alphaMeta =
      const i0.VerificationMeta('alpha');
  late final i0.GeneratedColumn<int> alpha = i0.GeneratedColumn<int>(
      'alpha', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _redMeta = const i0.VerificationMeta('red');
  late final i0.GeneratedColumn<int> red = i0.GeneratedColumn<int>(
      'red', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _greenMeta =
      const i0.VerificationMeta('green');
  late final i0.GeneratedColumn<int> green = i0.GeneratedColumn<int>(
      'green', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _blueMeta =
      const i0.VerificationMeta('blue');
  late final i0.GeneratedColumn<int> blue = i0.GeneratedColumn<int>(
      'blue', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<i0.GeneratedColumn> get $columns => [id, alpha, red, green, blue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafcolors';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Color> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('alpha')) {
      context.handle(
          _alphaMeta, alpha.isAcceptableOrUnknown(data['alpha']!, _alphaMeta));
    } else if (isInserting) {
      context.missing(_alphaMeta);
    }
    if (data.containsKey('red')) {
      context.handle(
          _redMeta, red.isAcceptableOrUnknown(data['red']!, _redMeta));
    } else if (isInserting) {
      context.missing(_redMeta);
    }
    if (data.containsKey('green')) {
      context.handle(
          _greenMeta, green.isAcceptableOrUnknown(data['green']!, _greenMeta));
    } else if (isInserting) {
      context.missing(_greenMeta);
    }
    if (data.containsKey('blue')) {
      context.handle(
          _blueMeta, blue.isAcceptableOrUnknown(data['blue']!, _blueMeta));
    } else if (isInserting) {
      context.missing(_blueMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.Color map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Color(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}id'])!,
      alpha: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}alpha'])!,
      red: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}red'])!,
      green: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}green'])!,
      blue: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}blue'])!,
    );
  }

  @override
  Tafcolors createAlias(String alias) {
    return Tafcolors(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Color extends i0.DataClass implements i0.Insertable<i1.Color> {
  final String id;
  final int alpha;
  final int red;
  final int green;
  final int blue;
  const Color(
      {required this.id,
      required this.alpha,
      required this.red,
      required this.green,
      required this.blue});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<String>(id);
    map['alpha'] = i0.Variable<int>(alpha);
    map['red'] = i0.Variable<int>(red);
    map['green'] = i0.Variable<int>(green);
    map['blue'] = i0.Variable<int>(blue);
    return map;
  }

  i1.TafcolorsCompanion toCompanion(bool nullToAbsent) {
    return i1.TafcolorsCompanion(
      id: i0.Value(id),
      alpha: i0.Value(alpha),
      red: i0.Value(red),
      green: i0.Value(green),
      blue: i0.Value(blue),
    );
  }

  factory Color.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Color(
      id: serializer.fromJson<String>(json['id']),
      alpha: serializer.fromJson<int>(json['alpha']),
      red: serializer.fromJson<int>(json['red']),
      green: serializer.fromJson<int>(json['green']),
      blue: serializer.fromJson<int>(json['blue']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'alpha': serializer.toJson<int>(alpha),
      'red': serializer.toJson<int>(red),
      'green': serializer.toJson<int>(green),
      'blue': serializer.toJson<int>(blue),
    };
  }

  i1.Color copyWith(
          {String? id, int? alpha, int? red, int? green, int? blue}) =>
      i1.Color(
        id: id ?? this.id,
        alpha: alpha ?? this.alpha,
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue,
      );
  Color copyWithCompanion(i1.TafcolorsCompanion data) {
    return Color(
      id: data.id.present ? data.id.value : this.id,
      alpha: data.alpha.present ? data.alpha.value : this.alpha,
      red: data.red.present ? data.red.value : this.red,
      green: data.green.present ? data.green.value : this.green,
      blue: data.blue.present ? data.blue.value : this.blue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Color(')
          ..write('id: $id, ')
          ..write('alpha: $alpha, ')
          ..write('red: $red, ')
          ..write('green: $green, ')
          ..write('blue: $blue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, alpha, red, green, blue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Color &&
          other.id == this.id &&
          other.alpha == this.alpha &&
          other.red == this.red &&
          other.green == this.green &&
          other.blue == this.blue);
}

class TafcolorsCompanion extends i0.UpdateCompanion<i1.Color> {
  final i0.Value<String> id;
  final i0.Value<int> alpha;
  final i0.Value<int> red;
  final i0.Value<int> green;
  final i0.Value<int> blue;
  final i0.Value<int> rowid;
  const TafcolorsCompanion({
    this.id = const i0.Value.absent(),
    this.alpha = const i0.Value.absent(),
    this.red = const i0.Value.absent(),
    this.green = const i0.Value.absent(),
    this.blue = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  TafcolorsCompanion.insert({
    required String id,
    required int alpha,
    required int red,
    required int green,
    required int blue,
    this.rowid = const i0.Value.absent(),
  })  : id = i0.Value(id),
        alpha = i0.Value(alpha),
        red = i0.Value(red),
        green = i0.Value(green),
        blue = i0.Value(blue);
  static i0.Insertable<i1.Color> custom({
    i0.Expression<String>? id,
    i0.Expression<int>? alpha,
    i0.Expression<int>? red,
    i0.Expression<int>? green,
    i0.Expression<int>? blue,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (alpha != null) 'alpha': alpha,
      if (red != null) 'red': red,
      if (green != null) 'green': green,
      if (blue != null) 'blue': blue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.TafcolorsCompanion copyWith(
      {i0.Value<String>? id,
      i0.Value<int>? alpha,
      i0.Value<int>? red,
      i0.Value<int>? green,
      i0.Value<int>? blue,
      i0.Value<int>? rowid}) {
    return i1.TafcolorsCompanion(
      id: id ?? this.id,
      alpha: alpha ?? this.alpha,
      red: red ?? this.red,
      green: green ?? this.green,
      blue: blue ?? this.blue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<String>(id.value);
    }
    if (alpha.present) {
      map['alpha'] = i0.Variable<int>(alpha.value);
    }
    if (red.present) {
      map['red'] = i0.Variable<int>(red.value);
    }
    if (green.present) {
      map['green'] = i0.Variable<int>(green.value);
    }
    if (blue.present) {
      map['blue'] = i0.Variable<int>(blue.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TafcolorsCompanion(')
          ..write('id: $id, ')
          ..write('alpha: $alpha, ')
          ..write('red: $red, ')
          ..write('green: $green, ')
          ..write('blue: $blue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class TafcoresDrift extends i2.ModularAccessor {
  TafcoresDrift(i0.GeneratedDatabase db) : super(db);
  i0.Selectable<i1.Color> customColors() {
    return customSelect('SELECT * FROM tafcolors', variables: [], readsFrom: {
      tafcolors,
    }).asyncMap(tafcolors.mapFromRow);
  }

  i1.Tafcolors get tafcolors => i2.ReadDatabaseContainer(attachedDatabase)
      .resultSet<i1.Tafcolors>('tafcolors');
}
