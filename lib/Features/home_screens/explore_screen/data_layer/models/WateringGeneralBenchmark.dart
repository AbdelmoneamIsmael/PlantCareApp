class WateringGeneralBenchmark {
  WateringGeneralBenchmark({
      this.value, 
      this.unit,});

  WateringGeneralBenchmark.fromJson(dynamic json) {
    value = json['value'];
    unit = json['unit'];
  }
  String? value;
  String? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    map['unit'] = unit;
    return map;
  }

}