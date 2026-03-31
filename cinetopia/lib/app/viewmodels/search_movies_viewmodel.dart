import 'package:cinetopia/app/models/movies.dart';
import 'package:cinetopia/app/services/search_movies_service.dart';

class SearchMoviesViewModel {
List<Movie> _moviesList = <Movie>[];
Future<List<Movie>> getPopularMovies() async {
 final SearchMoviesService service = SearchPopularMoviesService();
 _moviesList =  await service.getMovies();
 return _moviesList;
}

List<Movie> get moviesList => _moviesList;


}