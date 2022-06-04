import 'dart:convert';

class MeasureModel {
  double? value;
  String? unity;
  MeasureModel({
    this.value,
    this.unity,
  });

  MeasureModel copyWith({
    double? value,
    String? unity,
  }) {
    return MeasureModel(
      value: value ?? this.value,
      unity: unity ?? this.unity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'unity': unity,
    };
  }

  factory MeasureModel.fromMap(Map<String, dynamic> map) {
    return MeasureModel(
      value: map['value']?.toDouble(),
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MeasureModel.fromJson(String source) =>
      MeasureModel.fromMap(json.decode(source));

  @override
  String toString() => 'MeasureModel(value: $value, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MeasureModel &&
        other.value == value &&
        other.unity == unity;
  }

  @override
  int get hashCode => value.hashCode ^ unity.hashCode;
}
