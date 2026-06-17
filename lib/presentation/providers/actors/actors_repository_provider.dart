// Repositorio inmutable
import 'package:cinema_app/infrastructure/datasources/actors_moviedb_datasource.dart';
import 'package:cinema_app/infrastructure/repositories/actor_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImp(ActorsMoviedbDatasource());
});
