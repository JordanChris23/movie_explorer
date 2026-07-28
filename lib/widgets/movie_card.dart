import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/movie.dart';


class MovieCard extends StatelessWidget {

  final Movie movie;


  const MovieCard({
    super.key,
    required this.movie,
  });


  @override
  Widget build(BuildContext context) {


    return Card(

      margin: const EdgeInsets.all(10),

      child: ListTile(

        leading: Image.network(
          movie.imageUrl,
          width: 60,
          fit: BoxFit.cover,
        ),


        title: Text(movie.title),

        subtitle: Text(
          "${movie.genre} - ${movie.year}",
        ),


        trailing: const Icon(Icons.arrow_forward),


        onTap: (){

          context.go(
            '/details/${movie.id}',
          );

        },

      ),
    );
  }
}