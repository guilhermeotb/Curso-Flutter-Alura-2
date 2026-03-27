import '../helpers/consts.dart';
import '../models/movies.dart';
import 'package:http/http.dart' as http;

abstract class SearchMoviesService {
Future<List<Movie>> getMovies();
}


class SearchPopularMoviesService implements SearchMoviesService {
  

  List<Movie> movies = <Movie>[];
 @override
  Future<List<Movie>> getMovies() async {
    try {
      final response  = await http.get(Uri.parse(popularMoviesUrl), headers: requestHeader
      );
      if(response.statusCode == 200){
        print(response.body);
      } else { 
        throw Exception(response.body);
         } 
       return movies;
  } catch (e) {
       print(e); 
       return movies;
      }
  }  
}