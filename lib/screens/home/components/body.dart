import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genre.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(),
        Genres(),
      ],
    );
  }
}
