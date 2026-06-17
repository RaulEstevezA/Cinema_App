import 'package:cinema_app/domain/datasources/actors_datasources.dart';
import 'package:cinema_app/domain/entities/actor.dart';
import 'package:cinema_app/domain/repositories/actores_repositories.dart';

class ActorRepositoryImp extends ActorsRepository{

  final ActorsDatasources datasources;
  ActorRepositoryImp({required this.datasources});

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasources.getActorsByMovie(movieId);
  }
}
