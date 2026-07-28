import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../widgets/movie_card.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {

  String search = '';

  @override
  Widget build(BuildContext context) {

    final filteredMovies = movies.where((movie) {
      return movie.title
          .toLowerCase()
          .contains(search.toLowerCase());
    }).toList();


    return Scaffold(

      appBar: AppBar(
        title: const Text("Liste des films"),
      ),


      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(12),

            child: TextField(

              decoration: const InputDecoration(

                labelText: "Rechercher un film",

                border: OutlineInputBorder(),

                prefixIcon: Icon(Icons.search),

              ),


              onChanged: (value){

                setState(() {

                  search = value;

                });

              },

            ),
          ),



          Expanded(

            child: ListView.builder(

              itemCount: filteredMovies.length,


              itemBuilder: (context,index){

                return MovieCard(

                  movie: filteredMovies[index],

                );

              },

            ),

          ),

        ],
      ),
    );
  }
}