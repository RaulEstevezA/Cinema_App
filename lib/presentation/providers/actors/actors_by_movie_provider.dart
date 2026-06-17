
import 'package:cinema_app/domain/entities/actor.dart';
import 'package:cinema_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/legacy.dart';


final actorsByMovieProvider = StateNotifierProvider<ActorsByMovieNotifier, Map<String, List<Actor>>>((ref){
  final actorsRepository = ref.watch(actorsRepositoryProvider);
  return ActorsByMovieNotifier(getActors: actorsRepository.getActorsByMovie);
});



typedef ActorsByMovieProvider = Future<List<Actor>>Function(String movieId);

class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>> {

  final ActorsByMovieProvider getActors;

  ActorsByMovieNotifier({
    required this.getActors
  }) : super({});


  Future<void> loadActors(String movieId) async {
    if(state[movieId] != null) return;

    final List<Actor> actors = await getActors(movieId);

    state = {...state, movieId: actors};
  }
  
}