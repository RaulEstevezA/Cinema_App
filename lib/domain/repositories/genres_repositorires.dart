import 'package:cinema_app/domain/entities/genres.dart';

abstract class GenresRepositorires {
  Future<List<Genres>>getGenre();
}