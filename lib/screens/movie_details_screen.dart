import 'package:flutter/material.dart';

import '../data/movie_repository.dart';
import '../models/movie.dart';



class MovieDetailsScreen extends StatelessWidget {


final int id;


const MovieDetailsScreen({

super.key,

required this.id,

});



@override
Widget build(BuildContext context){


final MovieRepository repository =
MovieRepository();



final Movie? movie =
repository.getMovieById(id);



if(movie == null){

return Scaffold(

appBar:AppBar(
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


appBar:AppBar(

title:
Text(movie.title),

),



body:
SingleChildScrollView(

padding:
const EdgeInsets.all(20),


child:
Column(

crossAxisAlignment:
CrossAxisAlignment.start,


children:[



Image.network(

movie.imageUrl,

height:300,

width:double.infinity,

fit:BoxFit.cover,

),



const SizedBox(height:20),



Text(

movie.title,

style:
Theme.of(context)
.textTheme
.headlineMedium,

),



const SizedBox(height:10),



Text(
"Genre : ${movie.genre}",
),


Text(
"Année : ${movie.year}",
),


Text(
"Note : ${movie.rating}",
),



const SizedBox(height:20),



Text(movie.description),


],


),


),


);


}


}