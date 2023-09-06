import 'WateringGeneralBenchmark.dart';

/// date : "date"
/// image : "https://perenual.com/storage/species_image/1_abies_alba/regular/1536px-Abies_alba_SkalitC3A9.jpg"
/// description : "hello plant"
/// scientific_name : " Abies alba"
/// type : "tree"
/// cycle : "Perennial"
/// pruning_month : ["February","March","April"]
/// watering_general_benchmark : {"unit":"days","value":"7-10"}
/// watering : "Frequent"
/// is_saved : true
/// other_name : "Common Silver Fir"
/// id : 1
/// is_liked : true

class PlantDetails {
  PlantDetails({
      this.date, 
      this.image, 
      this.description, 
      this.scientificName, 
      this.type, 
      this.cycle, 
      this.pruningMonth, 
      this.wateringGeneralBenchmark, 
      this.watering, 
      this.isSaved, 
      this.otherName, 
      this.id, 
      this.isLiked,});

  PlantDetails.fromJson(dynamic json) {
    date = json['date'];
    image = json['image'];
    description = json['description'];
    scientificName = json['scientific_name'];
    type = json['type'];
    cycle = json['cycle'];
    pruningMonth = json['pruning_month'] != null ? json['pruning_month'].cast<String>() : [];
    wateringGeneralBenchmark = json['watering_general_benchmark'] != null ? WateringGeneralBenchmark.fromJson(json['watering_general_benchmark']) : null;
    watering = json['watering'];
    isSaved = json['is_saved'];
    otherName = json['other_name'];
    id = json['id'];
    isLiked = json['is_liked'];
  }
  String? date;
  String? image;
  String? description;
  String? scientificName;
  String? type;
  String? cycle;
  List<String>? pruningMonth;
  WateringGeneralBenchmark? wateringGeneralBenchmark;
  String? watering;
  bool? isSaved;
  String? otherName;
  num? id;
  bool? isLiked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['image'] = image;
    map['description'] = description;
    map['scientific_name'] = scientificName;
    map['type'] = type;
    map['cycle'] = cycle;
    map['pruning_month'] = pruningMonth;
    if (wateringGeneralBenchmark != null) {
      map['watering_general_benchmark'] = wateringGeneralBenchmark?.toJson();
    }
    map['watering'] = watering;
    map['is_saved'] = isSaved;
    map['other_name'] = otherName;
    map['id'] = id;
    map['is_liked'] = isLiked;
    return map;
  }

}