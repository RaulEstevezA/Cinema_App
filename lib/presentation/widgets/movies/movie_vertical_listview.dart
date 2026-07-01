

import 'package:animate_do/animate_do.dart';
import 'package:cinema_app/config/helpers/human_formats.dart';
import 'package:cinema_app/domain/entities/movies.dart';
import 'package:flutter/material.dart';

class MovieVerticalListview extends StatelessWidget {

  final Movie movie;
  final Function onMovieSelected;

  const MovieVerticalListview({super.key, 
    required this.onMovieSelected,
    required this.movie
  });

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){onMovieSelected(context, movie);},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            //Image
            SizedBox(width: size.width * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                movie.posterPath,
                loadingBuilder: (context, child, loadingProgress) => FadeIn(child: child),
              ),
            ),
            ),
      
            const SizedBox(width: 10),
      
            // Texto
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, style: textStyle.titleMedium,),
      
                  (movie.overview.length > 100)
                    ? Text('${movie.overview.substring(0,100)}...')
                    : Text(movie.overview),
      
                  Row(
                    children: [
                      Icon(Icons.star_half_rounded, color: Colors.yellow.shade800,),
                      const SizedBox(width: 5),
                      Text(
                        HumanFormats.number(movie.voteAverage, 1),
                        style: textStyle.bodyMedium!.copyWith(color: Colors.yellow.shade900),
                      ),
                    ],
                  ),            
                ],
              ),
            )
          ],
        ), 
      ),
    );
  }
}