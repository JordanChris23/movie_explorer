import 'package:flutter/material.dart';


class AddMovieScreen extends StatefulWidget {

  const AddMovieScreen({super.key});


  @override
  State<AddMovieScreen> createState() => _AddMovieScreenState();

}



class _AddMovieScreenState extends State<AddMovieScreen> {


  final formKey = GlobalKey<FormState>();


  final titleController = TextEditingController();

  final genreController = TextEditingController();

  final descriptionController = TextEditingController();



  void save(){

    if(formKey.currentState!.validate()){


      ScaffoldMessenger.of(context).showSnackBar(

        const SnackBar(

          content: Text(
            "Film ajouté"
          ),

        ),

      );

    }

  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Ajouter un film"
        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(20),


        child: Form(

          key: formKey,


          child: Column(

            children: [


              TextFormField(

                controller: titleController,

                decoration: const InputDecoration(

                  labelText: "Titre",

                  border: OutlineInputBorder(),

                ),


                validator:(value){

                  if(value == null || value.isEmpty){

                    return "Champ obligatoire";

                  }

                  return null;

                },

              ),



              const SizedBox(height:15),



              TextFormField(

                controller: genreController,

                decoration: const InputDecoration(

                  labelText: "Genre",

                  border: OutlineInputBorder(),

                ),


                validator:(value){

                  if(value == null || value.isEmpty){

                    return "Champ obligatoire";

                  }

                  return null;

                },

              ),



              const SizedBox(height:15),



              TextFormField(

                controller: descriptionController,

                maxLines:3,


                decoration: const InputDecoration(

                  labelText: "Description",

                  border: OutlineInputBorder(),

                ),


                validator:(value){

                  if(value == null || value.isEmpty){

                    return "Champ obligatoire";

                  }

                  return null;

                },

              ),



              const SizedBox(height:20),



              ElevatedButton(

                onPressed: save,

                child: const Text(
                  "Ajouter"
                ),

              )


            ],

          ),

        ),

      ),

    );

  }

}