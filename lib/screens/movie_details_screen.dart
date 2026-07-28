import 'package:flutter/material.dart';
import '../data/movie_data.dart';


class MovieDetailsScreen extends StatelessWidget {

  final int movieId;


  const MovieDetailsScreen({
    super.key,
    required this.movieId,
  });


  @override
  Widget build(BuildContext context) {


    final movie = movies.firstWhere(
      (m)=>m.id == movieId,
    );


    return Scaffold(

      appBar: AppBar(
        title: Text(movie.title),
      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            Image.network(
              movie.imageUrl,
              height:200,
              width:double.infinity,
              fit:BoxFit.cover,
            ),


            const SizedBox(height:20),


            Text(
              movie.title,
              style: const TextStyle(
                fontSize:30,
                fontWeight:FontWeight.bold,
              ),
            ),


            Text(movie.genre),


            Text(movie.description),

          ],
        ),
      ),
    );
  }
}