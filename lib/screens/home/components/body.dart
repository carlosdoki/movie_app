import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genre.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(),
        Genres(),
        MovieCarrousel(),
      ],
    );
  }
}

class MovieCarrousel extends StatefulWidget {
  @override
  _MovieCarrouselState createState() => _MovieCarrouselState();
}

class _MovieCarrouselState extends State<MovieCarrousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
