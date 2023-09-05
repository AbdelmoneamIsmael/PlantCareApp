/// id : 1
/// common_name : "European Silver Fir"
/// scientific_name : ["Abies alba"]
/// other_name : ["Common Silver Fir"]
/// cycle : "Perennial"
/// watering : "Frequent"
/// sunlight : ["full sun"]
/// default_image : {"license":45,"license_name":"Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)","license_url":"https://creativecommons.org/licenses/by-sa/3.0/deed.en","original_url":"https://perenual.com/storage/species_image/1_abies_alba/og/1536px-Abies_alba_SkalitC3A9.jpg","regular_url":"https://perenual.com/storage/species_image/1_abies_alba/regular/1536px-Abies_alba_SkalitC3A9.jpg","medium_url":"https://perenual.com/storage/species_image/1_abies_alba/medium/1536px-Abies_alba_SkalitC3A9.jpg","small_url":"https://perenual.com/storage/species_image/1_abies_alba/small/1536px-Abies_alba_SkalitC3A9.jpg","thumbnail":"https://perenual.com/storage/species_image/1_abies_alba/thumbnail/1536px-Abies_alba_SkalitC3A9.jpg"}

class Plants {
  Plants({
      num? id, 
      String? commonName, 
      List<String>? scientificName, 
      List<String>? otherName, 
      String? cycle, 
      String? watering, 
      List<String>? sunlight, 
      DefaultImage? defaultImage,}){
    _id = id;
    _commonName = commonName;
    _scientificName = scientificName;
    _otherName = otherName;
    _cycle = cycle;
    _watering = watering;
    _sunlight = sunlight;
    _defaultImage = defaultImage;
}

  Plants.fromJson(dynamic json) {
    _id = json['id'];
    _commonName = json['common_name'];
    _scientificName = json['scientific_name'] != null ? json['scientific_name'].cast<String>() : [];
    _otherName = json['other_name'] != null ? json['other_name'].cast<String>() : [];
    _cycle = json['cycle'];
    _watering = json['watering'];
    _sunlight = json['sunlight'] != null ? json['sunlight'].cast<String>() : [];
    _defaultImage = json['default_image'] != null ? DefaultImage.fromJson(json['default_image']) : null;
  }
  num? _id;
  String? _commonName;
  List<String>? _scientificName;
  List<String>? _otherName;
  String? _cycle;
  String? _watering;
  List<String>? _sunlight;
  DefaultImage? _defaultImage;
Plants copyWith({  num? id,
  String? commonName,
  List<String>? scientificName,
  List<String>? otherName,
  String? cycle,
  String? watering,
  List<String>? sunlight,
  DefaultImage? defaultImage,
}) => Plants(  id: id ?? _id,
  commonName: commonName ?? _commonName,
  scientificName: scientificName ?? _scientificName,
  otherName: otherName ?? _otherName,
  cycle: cycle ?? _cycle,
  watering: watering ?? _watering,
  sunlight: sunlight ?? _sunlight,
  defaultImage: defaultImage ?? _defaultImage,
);
  num? get id => _id;
  String? get commonName => _commonName;
  List<String>? get scientificName => _scientificName;
  List<String>? get otherName => _otherName;
  String? get cycle => _cycle;
  String? get watering => _watering;
  List<String>? get sunlight => _sunlight;
  DefaultImage? get defaultImage => _defaultImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['common_name'] = _commonName;
    map['scientific_name'] = _scientificName;
    map['other_name'] = _otherName;
    map['cycle'] = _cycle;
    map['watering'] = _watering;
    map['sunlight'] = _sunlight;
    if (_defaultImage != null) {
      map['default_image'] = _defaultImage?.toJson();
    }
    return map;
  }

}

/// license : 45
/// license_name : "Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)"
/// license_url : "https://creativecommons.org/licenses/by-sa/3.0/deed.en"
/// original_url : "https://perenual.com/storage/species_image/1_abies_alba/og/1536px-Abies_alba_SkalitC3A9.jpg"
/// regular_url : "https://perenual.com/storage/species_image/1_abies_alba/regular/1536px-Abies_alba_SkalitC3A9.jpg"
/// medium_url : "https://perenual.com/storage/species_image/1_abies_alba/medium/1536px-Abies_alba_SkalitC3A9.jpg"
/// small_url : "https://perenual.com/storage/species_image/1_abies_alba/small/1536px-Abies_alba_SkalitC3A9.jpg"
/// thumbnail : "https://perenual.com/storage/species_image/1_abies_alba/thumbnail/1536px-Abies_alba_SkalitC3A9.jpg"

class DefaultImage {
  DefaultImage({
      num? license, 
      String? licenseName, 
      String? licenseUrl, 
      String? originalUrl, 
      String? regularUrl, 
      String? mediumUrl, 
      String? smallUrl, 
      String? thumbnail,}){
    _license = license;
    _licenseName = licenseName;
    _licenseUrl = licenseUrl;
    _originalUrl = originalUrl;
    _regularUrl = regularUrl;
    _mediumUrl = mediumUrl;
    _smallUrl = smallUrl;
    _thumbnail = thumbnail;
}

  DefaultImage.fromJson(dynamic json) {
    _license = json['license'];
    _licenseName = json['license_name'];
    _licenseUrl = json['license_url'];
    _originalUrl = json['original_url'];
    _regularUrl = json['regular_url'];
    _mediumUrl = json['medium_url'];
    _smallUrl = json['small_url'];
    _thumbnail = json['thumbnail'];
  }
  num? _license;
  String? _licenseName;
  String? _licenseUrl;
  String? _originalUrl;
  String? _regularUrl;
  String? _mediumUrl;
  String? _smallUrl;
  String? _thumbnail;
DefaultImage copyWith({  num? license,
  String? licenseName,
  String? licenseUrl,
  String? originalUrl,
  String? regularUrl,
  String? mediumUrl,
  String? smallUrl,
  String? thumbnail,
}) => DefaultImage(  license: license ?? _license,
  licenseName: licenseName ?? _licenseName,
  licenseUrl: licenseUrl ?? _licenseUrl,
  originalUrl: originalUrl ?? _originalUrl,
  regularUrl: regularUrl ?? _regularUrl,
  mediumUrl: mediumUrl ?? _mediumUrl,
  smallUrl: smallUrl ?? _smallUrl,
  thumbnail: thumbnail ?? _thumbnail,
);
  num? get license => _license;
  String? get licenseName => _licenseName;
  String? get licenseUrl => _licenseUrl;
  String? get originalUrl => _originalUrl;
  String? get regularUrl => _regularUrl;
  String? get mediumUrl => _mediumUrl;
  String? get smallUrl => _smallUrl;
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['license'] = _license;
    map['license_name'] = _licenseName;
    map['license_url'] = _licenseUrl;
    map['original_url'] = _originalUrl;
    map['regular_url'] = _regularUrl;
    map['medium_url'] = _mediumUrl;
    map['small_url'] = _smallUrl;
    map['thumbnail'] = _thumbnail;
    return map;
  }

}