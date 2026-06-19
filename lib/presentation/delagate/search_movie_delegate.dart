import 'package:animate_do/animate_do.dart';
import 'package:cinema_app/domain/entities/movies.dart' show Movie;
import 'package:flutter/material.dart';

class SearchMovieDelegate extends SearchDelegate<Movie?> {

  @override
  String get searchFieldLabel => 'Buscar película';


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [

      // boton limpieza
      FadeIn(
        animate: query.isNotEmpty,
        child: IconButton(
          onPressed: () => query = '', 
          icon: Icon(Icons.cleaning_services_outlined)
        ),
      ),

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null), 
      icon: Icon(Icons.arrow_back_ios_new_rounded)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return const Text('buildSuggestions');
  }
}