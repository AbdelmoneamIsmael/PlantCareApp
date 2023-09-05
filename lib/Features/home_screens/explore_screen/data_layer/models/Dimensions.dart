class Dimensions {
  Dimensions({
      this.type, 
      this.minValue, 
      this.maxValue, 
      this.unit,});

  Dimensions.fromJson(dynamic json) {
    type = json['type'];
    minValue = json['min_value'];
    maxValue = json['max_value'];
    unit = json['unit'];
  }
  String? type;
  num? minValue;
  num? maxValue;
  String? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['min_value'] = minValue;
    map['max_value'] = maxValue;
    map['unit'] = unit;
    return map;
  }

}