import 'package:cinema_app/config/constants/enviroment.dart';
import 'package:cinema_app/domain/datasources/genres_datasource.dart';
import 'package:cinema_app/domain/entities/genres.dart';
import 'package:cinema_app/infrastructure/mappers/genre_mappers.dart';
import 'package:cinema_app/infrastructure/models/moviedb/genre_moviedb.dart';
import 'package:dio/dio.dart';

class AllGenresDatasource extends GenresDatasource{
  
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Enviroment.theMovideDbKey,
      'language': 'es-ES',
    },
  ));
  
  
  @override
  Future<List<Genres>> getGenre() async {
    final response = await dio.get(
      '/genre/movie/list',
    );

    final castResponse = GenreMovies.fromJson(response.data);

    List<Genres> genres= castResponse.genres.map((genres) => GenreMapper.genresDBToEntity(genres)).toList();

    return genres;
  }
}