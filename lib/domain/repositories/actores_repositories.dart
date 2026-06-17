import 'package:cinema_app/domain/entities/actor.dart';

abstract class ActoresRepositories {
  Future<List<Actor>> getActorsByMovie(String movieId);
}