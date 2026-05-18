

import 'package:cinema_app/config/constants/enviroment.dart';
import 'package:cinema_app/domain/datasources/movies_datasources.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDataSources {
  
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Enviroment.theMovideDbKey,
        'language': 'es-ES'
      }
  ));
  
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {

    final response = await dio.get('/movie/now:playing');
    response.data;
    final List<Movie> movies = [];

    

    return [];
  }

}