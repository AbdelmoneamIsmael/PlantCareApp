class DefaultImage {
  DefaultImage({
      this.license, 
      this.licenseName, 
      this.licenseUrl, 
      this.originalUrl, 
      this.regularUrl, 
      this.mediumUrl, 
      this.smallUrl, 
      this.thumbnail,});

  DefaultImage.fromJson(dynamic json) {
    license = json['license'];
    licenseName = json['license_name'];
    licenseUrl = json['license_url'];
    originalUrl = json['original_url'];
    regularUrl = json['regular_url'];
    mediumUrl = json['medium_url'];
    smallUrl = json['small_url'];
    thumbnail = json['thumbnail'];
  }
  num? license;
  String? licenseName;
  String? licenseUrl;
  String? originalUrl;
  String? regularUrl;
  String? mediumUrl;
  String? smallUrl;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['license'] = license;
    map['license_name'] = licenseName;
    map['license_url'] = licenseUrl;
    map['original_url'] = originalUrl;
    map['regular_url'] = regularUrl;
    map['medium_url'] = mediumUrl;
    map['small_url'] = smallUrl;
    map['thumbnail'] = thumbnail;
    return map;
  }

}