import 'package:marvel_heroes/src/modules/home/models/measure_model.dart';

class Height extends MeasureModel {
  Height({double? value, String? unity}) : super(unity: unity, value: value);
  factory Height.fromMap(Map<String, dynamic> map) {
    return Height(
      value: num.tryParse("${map['value']}")?.toDouble(),
      unity: map['unity'],
    );
  }
}
