import 'dart:convert';

import 'height_model.dart';
import 'weight_model.dart';

class Caracteristics {
  String? birth;
  Weight? weight;
  Height? height;
  String? universe;
  Caracteristics({
    this.birth,
    this.weight,
    this.height,
    this.universe,
  });

  Caracteristics copyWith({
    String? birth,
    Weight? weight,
    Height? height,
    String? universe,
  }) {
    return Caracteristics(
      birth: birth ?? this.birth,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      universe: universe ?? this.universe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'birth': birth,
      'weight': weight?.toMap(),
      'height': height?.toMap(),
      'universe': universe,
    };
  }

  factory Caracteristics.fromMap(Map<String, dynamic> map) {
    return Caracteristics(
      birth: map['birth'],
      weight: map['weight'] != null ? Weight.fromMap(map['weight']) : null,
      height: map['height'] != null ? Height.fromMap(map['height']) : null,
      universe: map['universe'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Caracteristics.fromJson(String source) =>
      Caracteristics.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Caracteristics(birth: $birth, weight: $weight, height: $height, universe: $universe)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Caracteristics &&
        other.birth == birth &&
        other.weight == weight &&
        other.height == height &&
        other.universe == universe;
  }

  @override
  int get hashCode {
    return birth.hashCode ^
        weight.hashCode ^
        height.hashCode ^
        universe.hashCode;
  }
}
