import 'package:cinema_app/domain/datasources/local_storage_datasource.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:cinema_app/domain/repositories/local_storage_repositories.dart';

class LocalStorageRepositoryImp extends LocalStorageRepositories {

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImp({required this.datasource});

  @override
  Future<bool> isFavoriteMovie(int movieId) {
    return datasource.isFavoriteMovie(movieId);
  }

  @override
  Future<List<Movie>> loadFavoriteMovies({int limit = 10, int offset = 0}) {
    return datasource.loadFavoriteMovies(limit: limit, offset: offset);
  }

  @override
  Future<void> toggleFavoriteMovie(Movie movie) {
    return datasource.toggleFavoriteMovie(movie);
  }
}