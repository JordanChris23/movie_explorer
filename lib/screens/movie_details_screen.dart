import 'package:flutter/material.dart';

import '../data/movie_data.dart';



class MovieDetailsScreen extends StatelessWidget {


 final int id;


 const MovieDetailsScreen({

 super.key,

 required this.id,

 });



 @override
 Widget build(BuildContext context){



 final movie =
 movieList.where(

 (movie)=> movie.id == id,

 ).isNotEmpty

 ? movieList.firstWhere(
 (movie)=>movie.id==id,
 )

 : null;




 if(movie == null){


 return Scaffold(


 appBar:
 AppBar(
 title:
 const Text("Erreur"),
 ),


 body:
 const Center(

 child:
 Text(
 "Film introuvable",
 ),

 ),


 );


 }




 return Scaffold(


 appBar:
 AppBar(

 title:
 Text(movie.title),

 ),



 body:
 Padding(


 padding:
 const EdgeInsets.all(20),



 child:
 Column(


 crossAxisAlignment:
 CrossAxisAlignment.start,



 children:[



 Text(

 movie.title,

 style:
 Theme.of(context)
 .textTheme
 .headlineSmall,

 ),



 const SizedBox(height:20),



 Text(movie.description),



 const SizedBox(height:20),



 Text(
 "Note : ${movie.rating}",
 ),



 ],



 ),



 ),



 );


 }



}