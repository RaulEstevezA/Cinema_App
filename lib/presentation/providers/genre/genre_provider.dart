

import 'package:cinema_app/domain/entities/genres.dart';
import 'package:cinema_app/infrastructure/datasources/genres_moviedb_datasource.dart';
import 'package:cinema_app/infrastructure/repositories/genre_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final genresRepositoryProvider = Provider<GenreRepositoryImp>((ref) {
  return GenreRepositoryImp(datasource: AllGenresDatasource());
});

final genresProvider = FutureProvider<List<Genres>>((ref) {
  final genresRepository = ref.watch(genresRepositoryProvider);
  return genresRepository.getGenre('');
});