import 'dart:convert';

class Abilities {
  int? force;
  int? intelligence;
  int? agility;
  int? endurance;
  int? velocity;
  Abilities({
    this.force,
    this.intelligence,
    this.agility,
    this.endurance,
    this.velocity,
  });

  Abilities copyWith({
    int? force,
    int? intelligence,
    int? agility,
    int? endurance,
    int? velocity,
  }) {
    return Abilities(
      force: force ?? this.force,
      intelligence: intelligence ?? this.intelligence,
      agility: agility ?? this.agility,
      endurance: endurance ?? this.endurance,
      velocity: velocity ?? this.velocity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'force': force,
      'intelligence': intelligence,
      'agility': agility,
      'endurance': endurance,
      'velocity': velocity,
    };
  }

  factory Abilities.fromMap(Map<String, dynamic> map) {
    return Abilities(
      force: map['force']?.toInt(),
      intelligence: map['intelligence']?.toInt(),
      agility: map['agility']?.toInt(),
      endurance: map['endurance']?.toInt(),
      velocity: map['velocity']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Abilities.fromJson(String source) =>
      Abilities.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Abilities(force: $force, intelligence: $intelligence, agility: $agility, endurance: $endurance, velocity: $velocity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Abilities &&
        other.force == force &&
        other.intelligence == intelligence &&
        other.agility == agility &&
        other.endurance == endurance &&
        other.velocity == velocity;
  }

  @override
  int get hashCode {
    return force.hashCode ^
        intelligence.hashCode ^
        agility.hashCode ^
        endurance.hashCode ^
        velocity.hashCode;
  }
}
