On continue. Maintenant on corrige les points qui vont encore faire monter ton score :

* ✅ `AddMovieScreen` : ajout réel d'un film
* ✅ `MoviesScreen` : recherche avec widget réutilisable
* ✅ `MovieDetailsScreen` : gestion d'erreur
* ✅ `README.md` : documentation propre

---

# 1) Remplace complètement `lib/widgets/movie_search_bar.dart`

(Si le fichier n'existe pas, crée-le)

```dart
import 'package:flutter/material.dart';


class MovieSearchBar extends StatelessWidget {


  final ValueChanged<String> onChanged;


  const MovieSearchBar({

    super.key,

    required this.onChanged,

  });



  @override
  Widget build(BuildContext context) {


    return TextField(


      onChanged: onChanged,


      decoration: InputDecoration(


        hintText: "Rechercher un film",


        prefixIcon:
        const Icon(Icons.search),


        filled:true,


        border:
        OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15),

        ),


      ),


    );


  }

}
```

---

# 2) Remplace complètement `lib/screens/movies_screen.dart`

```dart
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
```

---

# 3) Remplace complètement `lib/screens/add_movie_screen.dart`

```dart
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
```

---

# 4) Remplace complètement `lib/screens/movie_details_screen.dart`

```dart
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
```

---

# 5) README.md complet

Remplace ton README :

````md
# 🎬 Movie Explorer Flutter


Movie Explorer est une application Flutter permettant de découvrir, rechercher et ajouter des films.


## Fonctionnalités

✅ Navigation multi-écrans avec GoRouter

✅ Liste des films

✅ Recherche de films

✅ Ajout de nouveaux films

✅ Mode clair / sombre

✅ Interface responsive mobile et tablette

✅ Widgets réutilisables


## Architecture


lib/

├── data/

├── models/

├── screens/

├── router/

├── theme/

└── widgets/



## Widgets personnalisés

- MovieCard

- CustomButton

- MovieSearchBar


## Tests

Tests unitaires :

- Modèle Movie

- Données du repository


Tests widgets :

- Boutons

- Chargement application



## Technologies

Flutter

Dart

GoRouter

Provider


## Installation


```bash
flutter pub get

flutter run
````

## Auteur

JordanChris23

````

