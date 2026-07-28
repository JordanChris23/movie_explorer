import 'package:go_router/go_router.dart';

import '../screens/home_screen.dart';
import '../screens/movies_screen.dart';
import '../screens/add_movie_screen.dart';
import '../screens/movie_details_screen.dart';


class AppRouter {


static final router = GoRouter(

routes: [


GoRoute(

path: '/',

builder: (context,state)=>
const HomeScreen(),

),



GoRoute(

path:'/movies',

builder:(context,state)=>
const MoviesScreen(),

),



GoRoute(

path:'/add',

builder:(context,state)=>
const AddMovieScreen(),

),



GoRoute(

path:'/details/:id',

builder:(context,state){

final id =
int.parse(
state.pathParameters['id']!
);


return MovieDetailsScreen(

id:id,

);


},


),



],


);


}