import 'package:flutter/material.dart';
import 'package:movie_app/components/genre_card.dart';
import 'package:movie_app/constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Actions",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(
          genre: genres[index],
        ),
      ),
    );
  }
}
