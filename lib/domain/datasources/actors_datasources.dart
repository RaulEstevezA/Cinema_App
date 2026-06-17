import 'package:cinema_app/domain/entities/actor.dart';

abstract class ActorsDatasources {
  Future<List<Actor>> getActorsByMovie(String movieId);
}