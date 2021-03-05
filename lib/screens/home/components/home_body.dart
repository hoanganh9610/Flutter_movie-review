import 'package:flutter/material.dart';


import '../../../constants.dart';
import 'categories.dart';
import 'genres.dart';
import 'movie_carousel.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }

}