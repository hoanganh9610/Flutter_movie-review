import 'package:flutter/material.dart';
import 'package:movie_review/models/movie.dart';

import 'details/components/body_movie.dart';


class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyMovie(movie: movie),
    );
  }
}
