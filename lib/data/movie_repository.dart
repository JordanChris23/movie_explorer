import '../models/movie.dart';
import 'movie_data.dart';


class MovieRepository {

List<Movie> getMovies(){
 return movies;
}


Movie? getMovieById(int id){

try{

return movies.firstWhere(
(movie)=>movie.id==id
);

}catch(e){

return null;

}

}

}