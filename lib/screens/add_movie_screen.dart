import 'package:flutter/material.dart';

import '../models/movie.dart';
import '../data/movie_data.dart';



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


 final imageController =
 TextEditingController();


 final ratingController =
 TextEditingController();



 void saveMovie(){


 if(titleController.text.isEmpty ||
 descriptionController.text.isEmpty ||
 ratingController.text.isEmpty){


 ScaffoldMessenger.of(context)
 .showSnackBar(

 const SnackBar(

 content:
 Text("Veuillez remplir tous les champs"),

 ),

 );


 return;


 }



 final movie = Movie(


 id:
 movieList.length + 1,


 title:
 titleController.text,


 description:
 descriptionController.text,


 image:
 imageController.text,


 rating:
 double.parse(
 ratingController.text,
 ),


 );



 setState((){


 movieList.add(movie);


 });



 ScaffoldMessenger.of(context)
 .showSnackBar(

 const SnackBar(

 content:
 Text("Film ajouté avec succès"),

 ),

 );



 Navigator.pop(context);



 }



 Widget field(
 String label,
 TextEditingController controller
 ){


 return Padding(

 padding:
 const EdgeInsets.only(bottom:15),


 child:
 TextField(

 controller:
 controller,


 decoration:
 InputDecoration(

 labelText:
 label,

 border:
 const OutlineInputBorder(),

 ),


 ),


 );


 }




 @override
 Widget build(BuildContext context){


 return Scaffold(


 appBar:
 AppBar(

 title:
 const Text("Ajouter un film"),

 ),



 body:
 Padding(

 padding:
 const EdgeInsets.all(20),



 child:
 SingleChildScrollView(


 child:
 Column(


 children:[


 field(
 "Titre",
 titleController
 ),


 field(
 "Description",
 descriptionController
 ),


 field(
 "Image URL",
 imageController
 ),


 field(
 "Note",
 ratingController
 ),



 ElevatedButton(


 onPressed:
 saveMovie,


 child:
 const Text("Sauvegarder"),


 ),



 ],


 ),



 ),



 ),



 );


 }


}