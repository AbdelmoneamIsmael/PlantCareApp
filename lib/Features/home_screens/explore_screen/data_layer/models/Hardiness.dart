class Hardiness {
  Hardiness({
      this.min, 
      this.max,});

  Hardiness.fromJson(dynamic json) {
    min = json['min'];
    max = json['max'];
  }
  String? min;
  String? max;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['min'] = min;
    map['max'] = max;
    return map;
  }

}