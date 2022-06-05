import 'package:marvel_heroes/src/modules/home/models/measure_model.dart';

class Weight extends MeasureModel {
  Weight({double? value, String? unity}) : super(unity: unity, value: value);
  factory Weight.fromMap(Map<String, dynamic> map) {
    return Weight(
      value: num.tryParse("${map['value']}")?.toDouble(),
      unity: map['unity'],
    );
  }
}
