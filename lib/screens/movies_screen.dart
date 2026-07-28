import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/movie_repository.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';
import '../widgets/movie_search_bar.dart';



class MoviesScreen extends StatefulWidget {

  const MoviesScreen({super.key});


  @override
  State<MoviesScreen> createState()
      => _MoviesScreenState();

}



class _MoviesScreenState extends State<MoviesScreen>{


final MovieRepository repository =
    MovieRepository();


late List<Movie> movieList;


List<Movie> filteredMovies=[];



@override
void initState(){

super.initState();

movieList =
repository.getMovies();

filteredMovies =
movieList;

}



void searchMovie(String value){

setState((){


filteredMovies =
movieList.where((movie){

return movie.title
.toLowerCase()
.contains(
value.toLowerCase()
);

}).toList();


});


}




@override
Widget build(BuildContext context){


return Scaffold(


appBar:AppBar(

title:
const Text(
"Films",
),

),



body:Padding(

padding:
const EdgeInsets.all(16),


child:Column(

children:[


MovieSearchBar(

onChanged:
searchMovie,

),



const SizedBox(height:20),



Expanded(

child:
ListView.builder(


itemCount:
filteredMovies.length,


itemBuilder:(context,index){


final movie =
filteredMovies[index];


return GestureDetector(

onTap:(){

context.push(
'/details/${movie.id}'
);

},


child:
MovieCard(
movie:movie,
),


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