import '../models/movie.dart';


class MovieRepository {


  final List<Movie> _movies;



  MovieRepository(this._movies);



  List<Movie> get movies => _movies;



  void addMovie(Movie movie) {

    _movies.add(movie);

  }



  Movie? getMovieById(int id) {


    for(final movie in _movies){

      if(movie.id == id){

        return movie;

      }

    }


    return null;

  }



  List<Movie> search(String query){


    if(query.isEmpty){

      return _movies;

    }



    return _movies.where(

      (movie) => movie.title
          .toLowerCase()
          .contains(
            query.toLowerCase(),
          ),

    ).toList();


  }


}