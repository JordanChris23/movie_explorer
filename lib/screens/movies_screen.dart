import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../widgets/movie_card.dart';
import '../widgets/movie_search_bar.dart';


class MoviesScreen extends StatefulWidget {


 const MoviesScreen({super.key});


 @override
 State<MoviesScreen> createState()
 => _MoviesScreenState();

}



class _MoviesScreenState
extends State<MoviesScreen>{


 List filteredMovies = [];



 @override
 void initState(){

 super.initState();

 filteredMovies =
 movieList;

 }



 void searchMovie(String value){


 setState((){


 if(value.isEmpty){

 filteredMovies =
 movieList;

 }


 else{


 filteredMovies =
 movieList.where(

 (movie)=>

 movie.title
 .toLowerCase()
 .contains(
 value.toLowerCase(),
 ),


 ).toList();


 }


 });


 }



 @override
 Widget build(BuildContext context){


 return Scaffold(


 appBar: AppBar(

 title:
 const Text("Films"),

 ),



 body: Padding(


 padding:
 const EdgeInsets.all(16),



 child: Column(


 children:[



 MovieSearchBar(

 onChanged:
 searchMovie,

 ),



 const SizedBox(height:20),



 Expanded(


 child: GridView.builder(


 gridDelegate:
 const SliverGridDelegateWithFixedCrossAxisCount(

 crossAxisCount:2,

 childAspectRatio:0.65,

 crossAxisSpacing:10,

 mainAxisSpacing:10,

 ),



 itemCount:
 filteredMovies.length,



 itemBuilder:(context,index){


 return MovieCard(

 movie:
 filteredMovies[index],

 );


 },


 ),



 ),



 ],


 ),


 ),



 );


 }


}