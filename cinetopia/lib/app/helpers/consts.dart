import '../api_key.dart';

const String popularMoviesUrl = "https://api.themoviedb.org/3/movie/popular?language=pt-BR&page=1";

const requestHeader ={
        'accept': 'application/json',
        'Authorization' : 'Bearer $apiKey'
      } ;

const String imageUrlPrefix = "https://image.tmdb.org/t/p/w500";