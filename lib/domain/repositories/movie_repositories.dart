import 'package:cinema_app/domain/entities/movies.dart';

abstract class MoviesRepository {

  Future<List<Movie>>getNowPlaying({int page = 1});

}