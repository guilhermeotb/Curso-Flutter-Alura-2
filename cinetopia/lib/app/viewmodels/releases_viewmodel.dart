import '../models/movies.dart';
import '../services/search_movies_service.dart';

class ReleasesViewmodel {
  List<Movie> _moviesList = <Movie>[];

  Future<List<Movie>> getUpcomingMovies() async {
    final SearchMoviesService searchForUpcomingMovies = SearchForUpcomingMovies();
    _moviesList = await searchForUpcomingMovies.getMovies();
    return _moviesList;
  }

  List<Movie> get moviesList => _moviesList;

}