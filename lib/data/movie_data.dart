import '../models/movie.dart';

const List<Movie> movies = [
  Movie(
    id: 1,
    title: "Interstellar",
    genre: "Science-fiction",
    year: 2014,
    rating: 8.7,
    imageUrl:
        "https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
    description:
        "Un voyage spatial à travers les dimensions et le temps.",
  ),

  Movie(
    id: 2,
    title: "Inception",
    genre: "Action",
    year: 2010,
    rating: 8.8,
    imageUrl:
        "https://image.tmdb.org/t/p/w500/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg",
    description:
        "Un voleur capable d'entrer dans les rêves doit réaliser une mission complexe.",
  ),

  Movie(
    id: 3,
    title: "Titanic",
    genre: "Romance",
    year: 1997,
    rating: 7.9,
    imageUrl:
        "https://image.tmdb.org/t/p/w500/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
    description:
        "Une histoire d'amour célèbre sur fond de catastrophe maritime.",
  ),

  Movie(
    id: 4,
    title: "Avatar",
    genre: "Aventure",
    year: 2009,
    rating: 7.8,
    imageUrl:
        "https://image.tmdb.org/t/p/w500/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
    description:
        "Une aventure sur Pandora entre humains et habitants de la planète.",
  ),
];