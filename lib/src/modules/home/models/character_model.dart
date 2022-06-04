import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'abilities_model.dart';
import 'caracteristics_model.dart';

class CharacterModel {
  String? name;
  String? alterEgo;
  String? imagePath;
  String? biography;
  Caracteristics? caracteristics;
  Abilities? abilities;
  List<String>? movies;
  CharacterModel({
    this.name,
    this.alterEgo,
    this.imagePath,
    this.biography,
    this.caracteristics,
    this.abilities,
    this.movies,
  });

  CharacterModel copyWith({
    String? name,
    String? alterEgo,
    String? imagePath,
    String? biography,
    Caracteristics? caracteristics,
    Abilities? abilities,
    List<String>? movies,
  }) {
    return CharacterModel(
      name: name ?? this.name,
      alterEgo: alterEgo ?? this.alterEgo,
      imagePath: imagePath ?? this.imagePath,
      biography: biography ?? this.biography,
      caracteristics: caracteristics ?? this.caracteristics,
      abilities: abilities ?? this.abilities,
      movies: movies ?? this.movies,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'alterEgo': alterEgo,
      'imagePath': imagePath,
      'biography': biography,
      'caracteristics': caracteristics?.toMap(),
      'abilities': abilities?.toMap(),
      'movies': movies,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'],
      alterEgo: map['alterEgo'],
      imagePath: map['imagePath'],
      biography: map['biography'],
      caracteristics: map['caracteristics'] != null
          ? Caracteristics.fromMap(map['caracteristics'])
          : null,
      abilities:
          map['abilities'] != null ? Abilities.fromMap(map['abilities']) : null,
      movies: List<String>.from(map['movies']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CharacterModel(name: $name, alterEgo: $alterEgo, imagePath: $imagePath, biography: $biography, caracteristics: $caracteristics, abilities: $abilities, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterModel &&
        other.name == name &&
        other.alterEgo == alterEgo &&
        other.imagePath == imagePath &&
        other.biography == biography &&
        other.caracteristics == caracteristics &&
        other.abilities == abilities &&
        listEquals(other.movies, movies);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        alterEgo.hashCode ^
        imagePath.hashCode ^
        biography.hashCode ^
        caracteristics.hashCode ^
        abilities.hashCode ^
        movies.hashCode;
  }
}
