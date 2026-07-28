import 'package:flutter/material.dart';

import '../data/movie_repository.dart';
import '../models/movie.dart';



class AddMovieScreen extends StatefulWidget {


const AddMovieScreen({super.key});


@override
State<AddMovieScreen> createState()
=> _AddMovieScreenState();


}



class _AddMovieScreenState
extends State<AddMovieScreen>{


final titleController =
TextEditingController();


final descriptionController =
TextEditingController();


final MovieRepository repository =
MovieRepository();



void save(){


if(titleController.text.isEmpty){

return;

}



final movie = Movie(

id:
DateTime.now()
.millisecondsSinceEpoch,


title:
titleController.text,


genre:
"Autre",


year:
2026,


rating:
0,


imageUrl:
"https://via.placeholder.com/300",


description:
descriptionController.text,


);



repository.getMovies().add(movie);



ScaffoldMessenger.of(context)
.showSnackBar(

const SnackBar(

content:
Text(
"Film ajouté"
),

),

);



Navigator.pop(context);


}



@override
Widget build(BuildContext context){


return Scaffold(


appBar:
AppBar(

title:
const Text(
"Ajouter un film"
),

),



body:
Padding(

padding:
const EdgeInsets.all(20),



child:
Column(

children:[


TextField(

controller:titleController,

decoration:
const InputDecoration(

labelText:
"Titre",

),

),



TextField(

controller:
descriptionController,

decoration:
const InputDecoration(

labelText:
"Description",

),

),



const SizedBox(height:20),



ElevatedButton(

onPressed:save,


child:
const Text(
"Sauvegarder"
),

),


],


),


),


);


}


}