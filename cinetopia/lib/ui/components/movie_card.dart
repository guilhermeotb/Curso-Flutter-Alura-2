import 'package:cinetopia/app/models/movies.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF000000),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: NetworkImage(movie.getPosterImage()), fit: BoxFit.cover),
          ),  
          margin: const EdgeInsets.only(right: 16),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                movie.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Text(
              "Lançamento: ${movie.releaseDate}",
              style: TextStyle(fontSize: 14, color: Color(0xFFA5A5A5)),
            ),
          ],
        ),
      ],
    );
  }
}
