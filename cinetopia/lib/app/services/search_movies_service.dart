import 'dart:convert';

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

class SearchForMovie implements SearchMoviesService {
  final String query;
  
  SearchForMovie({required this.query});

  List<Movie> movies = <Movie>[];
 @override
  Future<List<Movie>> getMovies() async {
    try {
      final response  = await http.get(Uri.parse(moviePrefixUrl+ query + movieFilterSulfix), headers: requestHeader
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


class SearchForUpcomingMovies implements SearchMoviesService {
  final List<Movie> moviesList = <Movie>[];
  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response  = await http.get(Uri.parse(upcomingUrl), headers: requestHeader);
      if(response.statusCode == 200){
        for (dynamic movie in jsonDecode(response.body)['results']) {
          moviesList.add(Movie.fromMap(movie));
        }
      return moviesList;
      } else { 
        throw Exception(response.body);
         } 
  } catch (e) {
       print(e); 
       return moviesList;
      }
  }  
}