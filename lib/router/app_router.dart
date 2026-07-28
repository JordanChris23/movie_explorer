import 'package:go_router/go_router.dart';

import '../screens/home_screen.dart';
import '../screens/movies_screen.dart';
import '../screens/movie_details_screen.dart';
import '../screens/add_movie_screen.dart';


final GoRouter appRouter = GoRouter(

  initialLocation: '/',

  routes: [

    GoRoute(

      path: '/',

      name: 'home',

      builder: (context,state){

        return const HomeScreen();

      },

    ),



    GoRoute(

      path: '/movies',

      name: 'movies',

      builder: (context,state){

        return const MoviesScreen();

      },

    ),



    GoRoute(

      path: '/add',

      name: 'add',

      builder: (context,state){

        return const AddMovieScreen();

      },

    ),



    GoRoute(

      path: '/details/:id',

      name: 'details',

      builder: (context,state){

        final id = int.parse(
          state.pathParameters['id']!,
        );


        return MovieDetailsScreen(

          movieId: id,

        );

      },

    ),

  ],

);