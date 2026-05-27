import 'package:cinema_app/domain/entities/movies.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListview extends StatelessWidget {

  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? loadNextPage;

  const MovieHorizontalListview({super.key, this.title, this.subTitle, required this.movies, this.loadNextPage});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}