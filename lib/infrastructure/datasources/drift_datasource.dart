import 'package:cinema_app/config/database/favorite_database.dart';
import 'package:cinema_app/domain/datasources/local_storage_datasource.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:drift/drift.dart';

class DriftDatasource extends LocalStorageDatasource {

  final AppDatabase database;

  DriftDatasource([AppDatabase? databaseToUse])
    : database = databaseToUse ?? db;
  
  @override
  Future<bool> isFavoriteMovie(int movieId) async {
    // Contruir QUERY
    final query = database.select(database.favoriteMovies)
    ..where((table) => table.movieId.equals(movieId));
    // Ejecutar QUERY
    final favoriteMovie = await query.getSingleOrNull();

    // Retornar QUERY
    return favoriteMovie != null;
  }

  @override
  Future<List<Movie>> loadFavoriteMovies({int limit = 10, int offset = 0}) {
    // TODO: implement loadFavoriteMovies
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavoriteMovie(Movie movie) async {
    
    final isFavorite = await isFavoriteMovie(movie.id);

    if (isFavorite) {
      final deleteQuery = database.delete(database.favoriteMovies)
        ..where((table) => table.movieId.equals(movie.id));
    }
  }

}