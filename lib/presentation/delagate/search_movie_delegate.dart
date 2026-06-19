import 'package:flutter/material.dart';

class SearchMovieDelegate extends SearchDelegate {


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      const Text('BuildActions'),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('buildLeading');
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