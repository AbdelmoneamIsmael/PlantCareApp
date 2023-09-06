/// unit : "days"
/// value : "7-10"

class WateringGeneralBenchmark {
  WateringGeneralBenchmark({
      this.unit, 
      this.value,});

  WateringGeneralBenchmark.fromJson(dynamic json) {
    unit = json['unit'];
    value = json['value'];
  }
  String? unit;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

}