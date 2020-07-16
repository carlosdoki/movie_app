import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genre.dart';
import 'package:movie_app/screens/home/components/movie_carrousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarrousel(),
        ],
      ),
    );
  }
}
