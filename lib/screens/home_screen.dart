import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import '../providers/theme_provider.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final themeProvider =
        Provider.of<ThemeProvider>(context);


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Movie Explorer",
        ),

        actions: [

          Switch(

            value: themeProvider.darkMode,

            onChanged: (value){

              themeProvider.toggleTheme();

            },

          ),

        ],

      ),


      body: LayoutBuilder(

        builder:(context,constraints){


          final isTablet =
              constraints.maxWidth > 600;


          return Center(

            child: SingleChildScrollView(

              padding: EdgeInsets.all(
                isTablet ? 40 : 20,
              ),


              child: Column(

                mainAxisAlignment:
                    MainAxisAlignment.center,


                children:[


                  Icon(

                    Icons.movie,

                    size:isTablet ? 140 : 100,

                    color:
                    Theme.of(context)
                    .colorScheme
                    .primary,

                  ),


                  const SizedBox(height:30),



                  Text(

                    "Bienvenue dans Movie Explorer",

                    textAlign:TextAlign.center,

                    style:Theme.of(context)
                    .textTheme
                    .headlineSmall,

                  ),



                  const SizedBox(height:20),



                  const Text(

                    "Explorez vos films préférés, "
                    "consultez les détails et ajoutez "
                    "vos propres films.",

                    textAlign:TextAlign.center,

                  ),



                  const SizedBox(height:40),



                  SizedBox(

                    width:250,

                    child:ElevatedButton(

                      onPressed:(){

                        context.push('/movies');

                      },


                      child:const Text(
                        "Voir les films",
                      ),

                    ),

                  ),



                  const SizedBox(height:15),



                  SizedBox(

                    width:250,

                    child:OutlinedButton(

                      onPressed:(){

                        context.push('/add');

                      },


                      child:const Text(
                        "Ajouter un film",
                      ),

                    ),

                  ),


                ],

              ),

            ),

          );

        },

      ),

    );

  }

}