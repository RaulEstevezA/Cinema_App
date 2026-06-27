import 'package:cinema_app/presentation/providers/storage/favorite_movies_provider.dart';
import 'package:cinema_app/presentation/widgets/movies/movies_masonry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesView extends ConsumerStatefulWidget {
  const FavoritesView({super.key});

  @override
  ConsumerState<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends ConsumerState<FavoritesView> {

  @override
  void initState() {
    ref.read(favoriteMoviesProvider.notifier).loadNextpage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final favoriteMovies = ref.watch(favoriteMoviesProvider);
    final myMovieList = favoriteMovies.values.toList();

    return Scaffold(
      body: MoviesMasonry(movies: myMovieList)
    );
  }
}