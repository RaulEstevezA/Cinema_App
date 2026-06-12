import 'package:cinema_app/domain/entities/movies.dart';

abstract class MoviesDataSources {

  Future<List<Movie>>getNowPlaying({int page = 1});

  Future<List<Movie>>getPopular({int page = 1});

  Future<List<Movie>>getUpcoming({int page = 1});

}