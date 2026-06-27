import 'package:cinema_app/domain/entities/movies.dart';
import 'package:cinema_app/domain/repositories/local_storage_repositories.dart';
import 'package:cinema_app/presentation/providers/storage/local_storage_provider.dart';
import 'package:flutter_riverpod/legacy.dart';

final favoriteMoviesProvider = StateNotifierProvider((ref){

  final localStorageRepositories = ref.watch(localStorageRepositoryProvider);
  return StorageMoviesNotifier(localStorageRepositories: localStorageRepositories);
});

class StorageMoviesNotifier extends StateNotifier<Map<int, Movie>>{

  int page = 0;
  final LocalStorageRepositories localStorageRepositories;

  StorageMoviesNotifier({required this.localStorageRepositories}): super({});

  Future<void> toggleFavoriteMovies (Movie movie) async {
    final isFavorite = await localStorageRepositories.isFavoriteMovie(movie.id);
    await localStorageRepositories.toggleFavoriteMovie(movie);

    if (isFavorite){
      state.remove(movie.id);
      state = {...state};
      return;
    }

    state = {...state, movie.id: movie};
  }
}