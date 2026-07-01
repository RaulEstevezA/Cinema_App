

import 'package:cinema_app/domain/entities/genres.dart';
import 'package:cinema_app/infrastructure/models/moviedb/genre_moviedb.dart';

class GenreMapper {
  static Genres genresDBToEntity(Genre genreMovies) => Genres(
    id: genreMovies.id, 
    genre: genreMovies.name,
    );
}