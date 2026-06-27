import 'package:cinema_app/domain/entities/movies.dart';
import 'package:cinema_app/presentation/widgets/movies/movie_poster_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid/flutter_staggered_grid.dart';

class MoviesMasonry extends StatefulWidget {

  final List<Movie> movies;
  final Future<List<Movie>> Function()? loadNextPage;

  const MoviesMasonry({super.key, required this.movies, this.loadNextPage});

  @override
  State<MoviesMasonry> createState() => _MoviesMasonryState();
}

class _MoviesMasonryState extends State<MoviesMasonry> {

  bool siLastPage = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 3, 
      itemBuilder:(context, index) {
        return MoviePosterLink(movie: widget.movies[index]);
      },
      );
  }
}

