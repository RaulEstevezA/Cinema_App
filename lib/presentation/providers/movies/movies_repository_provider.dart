import 'package:cinema_app/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinema_app/infrastructure/repositories/movie_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Repositorio inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImp(MoviedbDatasource());
});

