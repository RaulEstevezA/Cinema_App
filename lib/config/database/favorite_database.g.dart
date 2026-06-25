// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_database.dart';

// ignore_for_file: type=lint
class $FavoriteMoviesTable extends FavoriteMovies
    with TableInfo<$FavoriteMoviesTable, FavoriteMovy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteMoviesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _backdropPatchMeta = const VerificationMeta(
    'backdropPatch',
  );
  @override
  late final GeneratedColumn<String> backdropPatch = GeneratedColumn<String>(
    'backdrop_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalTitleMeta = const VerificationMeta(
    'originalTitle',
  );
  @override
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
    'original_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _posterPatchMeta = const VerificationMeta(
    'posterPatch',
  );
  @override
  late final GeneratedColumn<String> posterPatch = GeneratedColumn<String>(
    'poster_pad',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tileMeta = const VerificationMeta('tile');
  @override
  late final GeneratedColumn<String> tile = GeneratedColumn<String>(
    'tile',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _voteAverageMeta = const VerificationMeta(
    'voteAverage',
  );
  @override
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
    'vote_average',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    movieId,
    backdropPatch,
    originalTitle,
    posterPatch,
    tile,
    voteAverage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_movies';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteMovy> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
        _backdropPatchMeta,
        backdropPatch.isAcceptableOrUnknown(
          data['backdrop_path']!,
          _backdropPatchMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_backdropPatchMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
        _originalTitleMeta,
        originalTitle.isAcceptableOrUnknown(
          data['original_title']!,
          _originalTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('poster_pad')) {
      context.handle(
        _posterPatchMeta,
        posterPatch.isAcceptableOrUnknown(
          data['poster_pad']!,
          _posterPatchMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_posterPatchMeta);
    }
    if (data.containsKey('tile')) {
      context.handle(
        _tileMeta,
        tile.isAcceptableOrUnknown(data['tile']!, _tileMeta),
      );
    } else if (isInserting) {
      context.missing(_tileMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
        _voteAverageMeta,
        voteAverage.isAcceptableOrUnknown(
          data['vote_average']!,
          _voteAverageMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteMovy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteMovy(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      backdropPatch: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}backdrop_path'],
      )!,
      originalTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_title'],
      )!,
      posterPatch: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_pad'],
      )!,
      tile: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tile'],
      )!,
      voteAverage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vote_average'],
      )!,
    );
  }

  @override
  $FavoriteMoviesTable createAlias(String alias) {
    return $FavoriteMoviesTable(attachedDatabase, alias);
  }
}

class FavoriteMovy extends DataClass implements Insertable<FavoriteMovy> {
  final int id;
  final int movieId;
  final String backdropPatch;
  final String originalTitle;
  final String posterPatch;
  final String tile;
  final double voteAverage;
  const FavoriteMovy({
    required this.id,
    required this.movieId,
    required this.backdropPatch,
    required this.originalTitle,
    required this.posterPatch,
    required this.tile,
    required this.voteAverage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['backdrop_path'] = Variable<String>(backdropPatch);
    map['original_title'] = Variable<String>(originalTitle);
    map['poster_pad'] = Variable<String>(posterPatch);
    map['tile'] = Variable<String>(tile);
    map['vote_average'] = Variable<double>(voteAverage);
    return map;
  }

  FavoriteMoviesCompanion toCompanion(bool nullToAbsent) {
    return FavoriteMoviesCompanion(
      id: Value(id),
      movieId: Value(movieId),
      backdropPatch: Value(backdropPatch),
      originalTitle: Value(originalTitle),
      posterPatch: Value(posterPatch),
      tile: Value(tile),
      voteAverage: Value(voteAverage),
    );
  }

  factory FavoriteMovy.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteMovy(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      backdropPatch: serializer.fromJson<String>(json['backdropPatch']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      posterPatch: serializer.fromJson<String>(json['posterPatch']),
      tile: serializer.fromJson<String>(json['tile']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'backdropPatch': serializer.toJson<String>(backdropPatch),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'posterPatch': serializer.toJson<String>(posterPatch),
      'tile': serializer.toJson<String>(tile),
      'voteAverage': serializer.toJson<double>(voteAverage),
    };
  }

  FavoriteMovy copyWith({
    int? id,
    int? movieId,
    String? backdropPatch,
    String? originalTitle,
    String? posterPatch,
    String? tile,
    double? voteAverage,
  }) => FavoriteMovy(
    id: id ?? this.id,
    movieId: movieId ?? this.movieId,
    backdropPatch: backdropPatch ?? this.backdropPatch,
    originalTitle: originalTitle ?? this.originalTitle,
    posterPatch: posterPatch ?? this.posterPatch,
    tile: tile ?? this.tile,
    voteAverage: voteAverage ?? this.voteAverage,
  );
  FavoriteMovy copyWithCompanion(FavoriteMoviesCompanion data) {
    return FavoriteMovy(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      backdropPatch: data.backdropPatch.present
          ? data.backdropPatch.value
          : this.backdropPatch,
      originalTitle: data.originalTitle.present
          ? data.originalTitle.value
          : this.originalTitle,
      posterPatch: data.posterPatch.present
          ? data.posterPatch.value
          : this.posterPatch,
      tile: data.tile.present ? data.tile.value : this.tile,
      voteAverage: data.voteAverage.present
          ? data.voteAverage.value
          : this.voteAverage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMovy(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPatch: $backdropPatch, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPatch: $posterPatch, ')
          ..write('tile: $tile, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    movieId,
    backdropPatch,
    originalTitle,
    posterPatch,
    tile,
    voteAverage,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteMovy &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.backdropPatch == this.backdropPatch &&
          other.originalTitle == this.originalTitle &&
          other.posterPatch == this.posterPatch &&
          other.tile == this.tile &&
          other.voteAverage == this.voteAverage);
}

class FavoriteMoviesCompanion extends UpdateCompanion<FavoriteMovy> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> backdropPatch;
  final Value<String> originalTitle;
  final Value<String> posterPatch;
  final Value<String> tile;
  final Value<double> voteAverage;
  const FavoriteMoviesCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.backdropPatch = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.posterPatch = const Value.absent(),
    this.tile = const Value.absent(),
    this.voteAverage = const Value.absent(),
  });
  FavoriteMoviesCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String backdropPatch,
    required String originalTitle,
    required String posterPatch,
    required String tile,
    this.voteAverage = const Value.absent(),
  }) : movieId = Value(movieId),
       backdropPatch = Value(backdropPatch),
       originalTitle = Value(originalTitle),
       posterPatch = Value(posterPatch),
       tile = Value(tile);
  static Insertable<FavoriteMovy> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? backdropPatch,
    Expression<String>? originalTitle,
    Expression<String>? posterPatch,
    Expression<String>? tile,
    Expression<double>? voteAverage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (backdropPatch != null) 'backdrop_path': backdropPatch,
      if (originalTitle != null) 'original_title': originalTitle,
      if (posterPatch != null) 'poster_pad': posterPatch,
      if (tile != null) 'tile': tile,
      if (voteAverage != null) 'vote_average': voteAverage,
    });
  }

  FavoriteMoviesCompanion copyWith({
    Value<int>? id,
    Value<int>? movieId,
    Value<String>? backdropPatch,
    Value<String>? originalTitle,
    Value<String>? posterPatch,
    Value<String>? tile,
    Value<double>? voteAverage,
  }) {
    return FavoriteMoviesCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      backdropPatch: backdropPatch ?? this.backdropPatch,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPatch: posterPatch ?? this.posterPatch,
      tile: tile ?? this.tile,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (backdropPatch.present) {
      map['backdrop_path'] = Variable<String>(backdropPatch.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (posterPatch.present) {
      map['poster_pad'] = Variable<String>(posterPatch.value);
    }
    if (tile.present) {
      map['tile'] = Variable<String>(tile.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMoviesCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPatch: $backdropPatch, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPatch: $posterPatch, ')
          ..write('tile: $tile, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FavoriteMoviesTable favoriteMovies = $FavoriteMoviesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteMovies];
}

typedef $$FavoriteMoviesTableCreateCompanionBuilder =
    FavoriteMoviesCompanion Function({
      Value<int> id,
      required int movieId,
      required String backdropPatch,
      required String originalTitle,
      required String posterPatch,
      required String tile,
      Value<double> voteAverage,
    });
typedef $$FavoriteMoviesTableUpdateCompanionBuilder =
    FavoriteMoviesCompanion Function({
      Value<int> id,
      Value<int> movieId,
      Value<String> backdropPatch,
      Value<String> originalTitle,
      Value<String> posterPatch,
      Value<String> tile,
      Value<double> voteAverage,
    });

class $$FavoriteMoviesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get backdropPatch => $composableBuilder(
    column: $table.backdropPatch,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterPatch => $composableBuilder(
    column: $table.posterPatch,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tile => $composableBuilder(
    column: $table.tile,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoriteMoviesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get backdropPatch => $composableBuilder(
    column: $table.backdropPatch,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterPatch => $composableBuilder(
    column: $table.posterPatch,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tile => $composableBuilder(
    column: $table.tile,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoriteMoviesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get backdropPatch => $composableBuilder(
    column: $table.backdropPatch,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get posterPatch => $composableBuilder(
    column: $table.posterPatch,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tile =>
      $composableBuilder(column: $table.tile, builder: (column) => column);

  GeneratedColumn<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => column,
  );
}

class $$FavoriteMoviesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoriteMoviesTable,
          FavoriteMovy,
          $$FavoriteMoviesTableFilterComposer,
          $$FavoriteMoviesTableOrderingComposer,
          $$FavoriteMoviesTableAnnotationComposer,
          $$FavoriteMoviesTableCreateCompanionBuilder,
          $$FavoriteMoviesTableUpdateCompanionBuilder,
          (
            FavoriteMovy,
            BaseReferences<_$AppDatabase, $FavoriteMoviesTable, FavoriteMovy>,
          ),
          FavoriteMovy,
          PrefetchHooks Function()
        > {
  $$FavoriteMoviesTableTableManager(
    _$AppDatabase db,
    $FavoriteMoviesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoriteMoviesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoriteMoviesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoriteMoviesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> backdropPatch = const Value.absent(),
                Value<String> originalTitle = const Value.absent(),
                Value<String> posterPatch = const Value.absent(),
                Value<String> tile = const Value.absent(),
                Value<double> voteAverage = const Value.absent(),
              }) => FavoriteMoviesCompanion(
                id: id,
                movieId: movieId,
                backdropPatch: backdropPatch,
                originalTitle: originalTitle,
                posterPatch: posterPatch,
                tile: tile,
                voteAverage: voteAverage,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int movieId,
                required String backdropPatch,
                required String originalTitle,
                required String posterPatch,
                required String tile,
                Value<double> voteAverage = const Value.absent(),
              }) => FavoriteMoviesCompanion.insert(
                id: id,
                movieId: movieId,
                backdropPatch: backdropPatch,
                originalTitle: originalTitle,
                posterPatch: posterPatch,
                tile: tile,
                voteAverage: voteAverage,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoriteMoviesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoriteMoviesTable,
      FavoriteMovy,
      $$FavoriteMoviesTableFilterComposer,
      $$FavoriteMoviesTableOrderingComposer,
      $$FavoriteMoviesTableAnnotationComposer,
      $$FavoriteMoviesTableCreateCompanionBuilder,
      $$FavoriteMoviesTableUpdateCompanionBuilder,
      (
        FavoriteMovy,
        BaseReferences<_$AppDatabase, $FavoriteMoviesTable, FavoriteMovy>,
      ),
      FavoriteMovy,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FavoriteMoviesTableTableManager get favoriteMovies =>
      $$FavoriteMoviesTableTableManager(_db, _db.favoriteMovies);
}
