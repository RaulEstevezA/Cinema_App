import 'package:cinema_app/domain/entities/genres.dart';

abstract class GenresDatasource {
  Future<List<Genres>>getGenre(String allGenre);
}