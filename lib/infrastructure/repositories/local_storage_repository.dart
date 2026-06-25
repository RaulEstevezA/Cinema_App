import 'package:cinema_app/domain/datasources/local_storage_datasource.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:cinema_app/domain/repositories/local_storage_repositories.dart';

class LocalStorageRepositoryImp extends LocalStorageRepositories {

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImp({required this.datasource});

  @override
  Future<bool> isFavoriteMovie(int movieId) {
    // TODO: implement isFavoriteMovie
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> loadFavoriteMovies({int limit = 10, int offset = 0}) {
    // TODO: implement loadFavoriteMovies
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavoriteMovie(Movie movie) {
    // TODO: implement toggleFavoriteMovie
    throw UnimplementedError();
  }
}