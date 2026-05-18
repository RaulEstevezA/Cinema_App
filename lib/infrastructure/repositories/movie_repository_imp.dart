import 'package:cinema_app/domain/datasources/movies_datasources.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:cinema_app/domain/repositories/movie_repositories.dart';

class MovieRepositoryImp extends MoviesRepository {

  final MoviesDataSources dataSources;

  MovieRepositoryImp(this.dataSources);


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return dataSources.getNowPlaying(page: page);
  }

}