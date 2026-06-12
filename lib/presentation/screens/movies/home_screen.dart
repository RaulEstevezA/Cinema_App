import 'package:cinema_app/presentation/providers/providers.dart';
import 'package:cinema_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
      
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
    ref.read(popularMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final slideShoeMovies = ref.watch(moviesSlideshowProvider);
    final popularMovies = ref.watch(popularMoviesProvider);

    if (slideShoeMovies.isEmpty) return CircularProgressIndicator();

    return CustomScrollView(

      slivers: [

        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
          ),
        ),


        SliverToBoxAdapter(
          child: Column(
            children: [
              // const CustomAppbar(),
          
              MoviesSlideshow(movies: slideShoeMovies),
          
              MovieHorizontalListview(
                movies: nowPlayingMovies,
                title: 'En Cines',
                subTitle: "lunes 20",
                loadNextPage: () => ref.read(nowPlayingMoviesProvider.notifier).loadNextPage(),
              ),

              MovieHorizontalListview(
                movies: nowPlayingMovies,
                title: 'Proximamente',
                subTitle: "lunes 20",
                loadNextPage: () => ref.read(nowPlayingMoviesProvider.notifier).loadNextPage(),
              ),

              MovieHorizontalListview(
                movies: nowPlayingMovies,
                title: 'Populares',
                // subTitle: "lunes 20",
                loadNextPage: () => ref.read(popularMoviesProvider.notifier).loadNextPage(),
              ),

              MovieHorizontalListview(
                movies: nowPlayingMovies,
                title: 'En Cines',
                subTitle: "lunes 20",
                loadNextPage: () => ref.read(nowPlayingMoviesProvider.notifier).loadNextPage(),
              ),

              const SizedBox(height: 20),
          
          
            ],
          ),
        ),
      ],
    );
  }
}