import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';



class HomeScreen extends StatelessWidget {


 const HomeScreen({super.key});



 @override
 Widget build(BuildContext context){


 final isDark =
     Theme.of(context).brightness ==
     Brightness.dark;



 return Scaffold(


 appBar: AppBar(


 title: const Text(
   "Movie Explorer",
 ),



 actions: [


 Switch(

 value: isDark,


 onChanged: (value){


 Provider.of<ThemeProvider>(
   context,
   listen:false,
 )
 .toggleTheme(value);



 },


 ),


 ],


 ),



 body: LayoutBuilder(


 builder:(context,constraints){



 final padding =
 constraints.maxWidth > 600
 ? 60.0
 : 20.0;



 return Padding(


 padding:
 EdgeInsets.all(padding),



 child: Column(


 mainAxisAlignment:
 MainAxisAlignment.center,



 children: [



 const Icon(

 Icons.movie,

 size:100,

 ),



 const SizedBox(height:30),



 Text(

 "Bienvenue dans Movie Explorer",

 style:
 Theme.of(context)
 .textTheme
 .headlineSmall,

 textAlign:
 TextAlign.center,

 ),



 ],



 ),


 );



 },


 ),



 );


 }


}