// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:sales_app/database/tables/teste.drift.dart' as i1;
import 'dart:typed_data' as i2;
import 'package:sales_app/database/helpers/converters.dart' as i3;

typedef $TaftesteCreateCompanionBuilder = i1.TaftesteCompanion Function({
  i0.Value<int> id,
  required String name,
  i0.Value<String?> biography,
  i0.Value<String?> preferences,
  i0.Value<i2.Uint8List?> profilePicture,
});
typedef $TaftesteUpdateCompanionBuilder = i1.TaftesteCompanion Function({
  i0.Value<int> id,
  i0.Value<String> name,
  i0.Value<String?> biography,
  i0.Value<String?> preferences,
  i0.Value<i2.Uint8List?> profilePicture,
});

class $TaftesteFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafteste> {
  $TaftesteFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get biography => $composableBuilder(
      column: $table.biography, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnWithTypeConverterFilters<String?, String, String> get preferences =>
      $composableBuilder(
          column: $table.preferences,
          builder: (column) => i0.ColumnWithTypeConverterFilters(column));

  i0.ColumnFilters<i2.Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture,
      builder: (column) => i0.ColumnFilters(column));
}

class $TaftesteOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafteste> {
  $TaftesteOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get biography => $composableBuilder(
      column: $table.biography,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get preferences => $composableBuilder(
      column: $table.preferences,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<i2.Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture,
      builder: (column) => i0.ColumnOrderings(column));
}

class $TaftesteAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Tafteste> {
  $TaftesteAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  i0.GeneratedColumn<String> get biography =>
      $composableBuilder(column: $table.biography, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<String?, String> get preferences =>
      $composableBuilder(
          column: $table.preferences, builder: (column) => column);

  i0.GeneratedColumn<i2.Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture, builder: (column) => column);
}

class $TaftesteTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Tafteste,
    i1.Teste,
    i1.$TaftesteFilterComposer,
    i1.$TaftesteOrderingComposer,
    i1.$TaftesteAnnotationComposer,
    $TaftesteCreateCompanionBuilder,
    $TaftesteUpdateCompanionBuilder,
    (i1.Teste, i0.BaseReferences<i0.GeneratedDatabase, i1.Tafteste, i1.Teste>),
    i1.Teste,
    i0.PrefetchHooks Function()> {
  $TaftesteTableManager(i0.GeneratedDatabase db, i1.Tafteste table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$TaftesteFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$TaftesteOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$TaftesteAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<String> name = const i0.Value.absent(),
            i0.Value<String?> biography = const i0.Value.absent(),
            i0.Value<String?> preferences = const i0.Value.absent(),
            i0.Value<i2.Uint8List?> profilePicture = const i0.Value.absent(),
          }) =>
              i1.TaftesteCompanion(
            id: id,
            name: name,
            biography: biography,
            preferences: preferences,
            profilePicture: profilePicture,
          ),
          createCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            required String name,
            i0.Value<String?> biography = const i0.Value.absent(),
            i0.Value<String?> preferences = const i0.Value.absent(),
            i0.Value<i2.Uint8List?> profilePicture = const i0.Value.absent(),
          }) =>
              i1.TaftesteCompanion.insert(
            id: id,
            name: name,
            biography: biography,
            preferences: preferences,
            profilePicture: profilePicture,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TaftesteProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Tafteste,
    i1.Teste,
    i1.$TaftesteFilterComposer,
    i1.$TaftesteOrderingComposer,
    i1.$TaftesteAnnotationComposer,
    $TaftesteCreateCompanionBuilder,
    $TaftesteUpdateCompanionBuilder,
    (i1.Teste, i0.BaseReferences<i0.GeneratedDatabase, i1.Tafteste, i1.Teste>),
    i1.Teste,
    i0.PrefetchHooks Function()>;

class Tafteste extends i0.Table with i0.TableInfo<Tafteste, i1.Teste> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tafteste(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
      'id', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const i0.VerificationMeta _nameMeta =
      const i0.VerificationMeta('name');
  late final i0.GeneratedColumn<String> name = i0.GeneratedColumn<String>(
      'name', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const i0.VerificationMeta _biographyMeta =
      const i0.VerificationMeta('biography');
  late final i0.GeneratedColumn<String> biography = i0.GeneratedColumn<String>(
      'biography', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const i0.VerificationMeta _preferencesMeta =
      const i0.VerificationMeta('preferences');
  late final i0.GeneratedColumnWithTypeConverter<String?, String> preferences =
      i0.GeneratedColumn<String>('preferences', aliasedName, true,
              type: i0.DriftSqlType.string,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<String?>(i1.Tafteste.$converterpreferencesn);
  static const i0.VerificationMeta _profilePictureMeta =
      const i0.VerificationMeta('profilePicture');
  late final i0.GeneratedColumn<i2.Uint8List> profilePicture =
      i0.GeneratedColumn<i2.Uint8List>('profile_picture', aliasedName, true,
          type: i0.DriftSqlType.blob,
          requiredDuringInsert: false,
          $customConstraints: '');
  @override
  List<i0.GeneratedColumn> get $columns =>
      [id, name, biography, preferences, profilePicture];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tafteste';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Teste> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('biography')) {
      context.handle(_biographyMeta,
          biography.isAcceptableOrUnknown(data['biography']!, _biographyMeta));
    }
    context.handle(_preferencesMeta, const i0.VerificationResult.success());
    if (data.containsKey('profile_picture')) {
      context.handle(
          _profilePictureMeta,
          profilePicture.isAcceptableOrUnknown(
              data['profile_picture']!, _profilePictureMeta));
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.Teste map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Teste(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}name'])!,
      biography: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}biography']),
      preferences: i1.Tafteste.$converterpreferencesn.fromSql(attachedDatabase
          .typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}preferences'])),
      profilePicture: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.blob, data['${effectivePrefix}profile_picture']),
    );
  }

  @override
  Tafteste createAlias(String alias) {
    return Tafteste(attachedDatabase, alias);
  }

  static i0.TypeConverter<String, String> $converterpreferences =
      const i3.StringConverter(40);
  static i0.TypeConverter<String?, String?> $converterpreferencesn =
      i0.NullAwareTypeConverter.wrap($converterpreferences);
  @override
  bool get dontWriteConstraints => true;
}

class Teste extends i0.DataClass implements i0.Insertable<i1.Teste> {
  final int id;
  final String name;
  final String? biography;
  final String? preferences;
  final i2.Uint8List? profilePicture;
  const Teste(
      {required this.id,
      required this.name,
      this.biography,
      this.preferences,
      this.profilePicture});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['name'] = i0.Variable<String>(name);
    if (!nullToAbsent || biography != null) {
      map['biography'] = i0.Variable<String>(biography);
    }
    if (!nullToAbsent || preferences != null) {
      map['preferences'] = i0.Variable<String>(
          i1.Tafteste.$converterpreferencesn.toSql(preferences));
    }
    if (!nullToAbsent || profilePicture != null) {
      map['profile_picture'] = i0.Variable<i2.Uint8List>(profilePicture);
    }
    return map;
  }

  i1.TaftesteCompanion toCompanion(bool nullToAbsent) {
    return i1.TaftesteCompanion(
      id: i0.Value(id),
      name: i0.Value(name),
      biography: biography == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(biography),
      preferences: preferences == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(preferences),
      profilePicture: profilePicture == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(profilePicture),
    );
  }

  factory Teste.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Teste(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      biography: serializer.fromJson<String?>(json['biography']),
      preferences: serializer.fromJson<String?>(json['preferences']),
      profilePicture:
          serializer.fromJson<i2.Uint8List?>(json['profile_picture']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'biography': serializer.toJson<String?>(biography),
      'preferences': serializer.toJson<String?>(preferences),
      'profile_picture': serializer.toJson<i2.Uint8List?>(profilePicture),
    };
  }

  i1.Teste copyWith(
          {int? id,
          String? name,
          i0.Value<String?> biography = const i0.Value.absent(),
          i0.Value<String?> preferences = const i0.Value.absent(),
          i0.Value<i2.Uint8List?> profilePicture = const i0.Value.absent()}) =>
      i1.Teste(
        id: id ?? this.id,
        name: name ?? this.name,
        biography: biography.present ? biography.value : this.biography,
        preferences: preferences.present ? preferences.value : this.preferences,
        profilePicture:
            profilePicture.present ? profilePicture.value : this.profilePicture,
      );
  Teste copyWithCompanion(i1.TaftesteCompanion data) {
    return Teste(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      biography: data.biography.present ? data.biography.value : this.biography,
      preferences:
          data.preferences.present ? data.preferences.value : this.preferences,
      profilePicture: data.profilePicture.present
          ? data.profilePicture.value
          : this.profilePicture,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Teste(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('biography: $biography, ')
          ..write('preferences: $preferences, ')
          ..write('profilePicture: $profilePicture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, biography, preferences,
      i0.$driftBlobEquality.hash(profilePicture));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Teste &&
          other.id == this.id &&
          other.name == this.name &&
          other.biography == this.biography &&
          other.preferences == this.preferences &&
          i0.$driftBlobEquality
              .equals(other.profilePicture, this.profilePicture));
}

class TaftesteCompanion extends i0.UpdateCompanion<i1.Teste> {
  final i0.Value<int> id;
  final i0.Value<String> name;
  final i0.Value<String?> biography;
  final i0.Value<String?> preferences;
  final i0.Value<i2.Uint8List?> profilePicture;
  const TaftesteCompanion({
    this.id = const i0.Value.absent(),
    this.name = const i0.Value.absent(),
    this.biography = const i0.Value.absent(),
    this.preferences = const i0.Value.absent(),
    this.profilePicture = const i0.Value.absent(),
  });
  TaftesteCompanion.insert({
    this.id = const i0.Value.absent(),
    required String name,
    this.biography = const i0.Value.absent(),
    this.preferences = const i0.Value.absent(),
    this.profilePicture = const i0.Value.absent(),
  }) : name = i0.Value(name);
  static i0.Insertable<i1.Teste> custom({
    i0.Expression<int>? id,
    i0.Expression<String>? name,
    i0.Expression<String>? biography,
    i0.Expression<String>? preferences,
    i0.Expression<i2.Uint8List>? profilePicture,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (biography != null) 'biography': biography,
      if (preferences != null) 'preferences': preferences,
      if (profilePicture != null) 'profile_picture': profilePicture,
    });
  }

  i1.TaftesteCompanion copyWith(
      {i0.Value<int>? id,
      i0.Value<String>? name,
      i0.Value<String?>? biography,
      i0.Value<String?>? preferences,
      i0.Value<i2.Uint8List?>? profilePicture}) {
    return i1.TaftesteCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      biography: biography ?? this.biography,
      preferences: preferences ?? this.preferences,
      profilePicture: profilePicture ?? this.profilePicture,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = i0.Variable<String>(name.value);
    }
    if (biography.present) {
      map['biography'] = i0.Variable<String>(biography.value);
    }
    if (preferences.present) {
      map['preferences'] = i0.Variable<String>(
          i1.Tafteste.$converterpreferencesn.toSql(preferences.value));
    }
    if (profilePicture.present) {
      map['profile_picture'] = i0.Variable<i2.Uint8List>(profilePicture.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaftesteCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('biography: $biography, ')
          ..write('preferences: $preferences, ')
          ..write('profilePicture: $profilePicture')
          ..write(')'))
        .toString();
  }
}
