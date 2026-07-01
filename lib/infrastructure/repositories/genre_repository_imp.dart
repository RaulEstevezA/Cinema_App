

import 'package:cinema_app/domain/datasources/genres_datasource.dart';
import 'package:cinema_app/domain/entities/genres.dart';
import 'package:cinema_app/domain/repositories/genres_repositorires.dart';

class GenreRepositoryImp extends GenresRepositorires {
  final GenresDatasource datasource;

  GenreRepositoryImp({required this.datasource});
  
  @override
  Future<List<Genres>> getGenre(String allGenre) {
    return datasource.getGenre(allGenre);
  }

  

}