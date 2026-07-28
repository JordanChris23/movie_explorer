class Movie {
  final int id;
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String imageUrl;
  final String description;

  const Movie({
    required this.id,
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.imageUrl,
    required this.description,
  });

  Movie copyWith({
    int? id,
    String? title,
    String? genre,
    int? year,
    double? rating,
    String? imageUrl,
    String? description,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      genre: genre ?? this.genre,
      year: year ?? this.year,
      rating: rating ?? this.rating,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'genre': genre,
      'year': year,
      'rating': rating,
      'imageUrl': imageUrl,
      'description': description,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'] as int,
      title: map['title'] as String,
      genre: map['genre'] as String,
      year: map['year'] as int,
      rating: (map['rating'] as num).toDouble(),
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }
}