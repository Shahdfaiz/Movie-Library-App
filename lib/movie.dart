import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String poster;
  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.poster
  });
}
final List<Movie> movies = [
  const Movie(
        title: "Ratatouille",
        genre: "Animation, Adventure, Comedy",
        year: 2007,
        rating: 8.1,
        poster: 'assets/posters/Ratatouille.jpg'),
const Movie(
      title: "Tangled",
      genre: "Animation, Adventure, Comedy",
      year: 2010,
      rating: 7.7,
      poster: 'assets/posters/Tangled.jpg')
    ,
const Movie(
      title: "Frozen",
      genre: "Animation, Adventure, Comedy",
      year: 2013,
      rating: 7.4,
      poster: 'assets/posters/Frozen.jpg'
),
const Movie(
      title: "Monsters, Inc.",
      genre: "Animation, Adventure, Comedy",
      year: 2001,
      rating: 8.1,
      poster: 'assets/posters/Monsters.jpg')
    ,
const Movie(
      title: "Toy Story 3",
      genre: "Animation, Adventure, Comedy",
      year: 2010,
      rating: 8.3,
      poster: 'assets/posters/Toy Story 3.jpg')
    ,
const Movie(
      title: "Bolt",
      genre: "Animation, Adventure, Comedy",
      year: 2008,
      rating: 6.8,
      poster:'assets/posters/Bolt.jpg'
),
const Movie(
      title: "Finding Nemo",
      genre: "Animation, Adventure, Comedy",
      year: 2003,
      rating: 8.2,
      poster: 'assets/posters/Nemo.jpg'
),
const Movie(
      title: "Zootopia",
      genre: "Animation, Adventure, Comedy",
      year: 2016,
      rating: 8.0,
      poster: 'assets/posters/Zootopia.jpg'
),
const Movie(
      title: "Mulan",
      genre: "Animation, Adventure, Musical",
      year: 1998,
      rating: 7.7,
      poster: 'assets/posters/Mulan.jpg'
),
const Movie(
      title: "Cinderella",
      genre: "Animation, Family, Fantasy",
      year: 1950,
      rating: 7.3,
      poster: 'assets/posters/Cinderella.jpg'
)
];