import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import 'Dimensions.dart';
import 'Hardiness.dart';
import 'HardinessLocation.dart';
import 'WateringGeneralBenchmark.dart';
import 'DefaultImage.dart';

class PlantDetails extends ExploreEntity {
  PlantDetails({
    this.id,
    this.commonName,
    this.scientificName,
    this.otherName,
    this.family,
    this.origin,
    this.type,
    this.dimension,
    this.dimensions,
    this.cycle,
    this.attracts,
    this.propagation,
    this.hardiness,
    this.hardinessLocation,
    this.watering,
    this.depthWaterRequirement,
    this.volumeWaterRequirement,
    this.wateringPeriod,
    this.wateringGeneralBenchmark,
    this.plantAnatomy,
    this.sunlight,
    this.pruningMonth,
    this.pruningCount,
    this.seeds,
    this.maintenance,
    this.careGuides,
    this.soil,
    this.growthRate,
    this.droughtTolerant,
    this.saltTolerant,
    this.thorny,
    this.invasive,
    this.tropical,
    this.indoor,
    this.careLevel,
    this.pestSusceptibility,
    this.pestSusceptibilityApi,
    this.flowers,
    this.floweringSeason,
    this.flowerColor,
    this.cones,
    this.fruits,
    this.edibleFruit,
    this.edibleFruitTasteProfile,
    this.fruitNutritionalValue,
    this.fruitColor,
    this.harvestSeason,
    this.leaf,
    this.leafColor,
    this.edibleLeaf,
    this.cuisine,
    this.medicinal,
    this.poisonousToHumans,
    this.poisonousToPets,
    this.description,
    this.defaultImage,
    this.otherImages,
  }) : super(
          plantId: id,
          image: defaultImage!.mediumUrl,
          plantDescription: description,

        );

  PlantDetails.fromJson(Map<String,dynamic> json) {
    id = json['id'];
    commonName = json['common_name'];
    scientificName = json['scientific_name'] != null
        ? json['scientific_name'].cast<String>()
        : [];
    otherName =
        json['other_name'] != null ? json['other_name'].cast<String>() : [];
    family = json['family'];
    origin = json['origin'] != null ? json['origin'].cast<String>() : [];
    type = json['type'];
    dimension = json['dimension'];
    dimensions = json['dimensions'] != null
        ? Dimensions.fromJson(json['dimensions'])
        : null;
    cycle = json['cycle'];
    if (json['attracts'] != null) {
      attracts = [];
      json['attracts'].forEach((v) {
        attracts?.add(v.fromJson(v));
      });
    }
    propagation =
        json['propagation'] != null ? json['propagation'].cast<String>() : [];
    hardiness = json['hardiness'] != null
        ? Hardiness.fromJson(json['hardiness'])
        : null;
    hardinessLocation = json['hardiness_location'] != null
        ? HardinessLocation.fromJson(json['hardiness_location'])
        : null;
    watering = json['watering'];
    if (json['depth_water_requirement'] != null) {
      depthWaterRequirement = [];
      json['depth_water_requirement'].forEach((v) {
        depthWaterRequirement?.add(v.fromJson(v));
      });
    }
    if (json['volume_water_requirement'] != null) {
      volumeWaterRequirement = [];
      json['volume_water_requirement'].forEach((v) {
        volumeWaterRequirement?.add(v.fromJson(v));
      });
    }
    wateringPeriod = json['watering_period'];
    wateringGeneralBenchmark = json['watering_general_benchmark'] != null
        ? WateringGeneralBenchmark.fromJson(json['watering_general_benchmark'])
        : null;
    if (json['plant_anatomy'] != null) {
      plantAnatomy = [];
      json['plant_anatomy'].forEach((v) {
        plantAnatomy?.add(v.fromJson(v));
      });
    }
    sunlight = json['sunlight'] != null ? json['sunlight'].cast<String>() : [];
    pruningMonth = json['pruning_month'] != null
        ? json['pruning_month'].cast<String>()
        : [];
    if (json['pruning_count'] != null) {
      pruningCount = [];
      json['pruning_count'].forEach((v) {
        pruningCount?.add(v.fromJson(v));
      });
    }
    seeds = json['seeds'];
    maintenance = json['maintenance'];
    careGuides = json['care-guides'];
    if (json['soil'] != null) {
      soil = [];
      json['soil'].forEach((v) {
        soil?.add(v.fromJson(v));
      });
    }
    growthRate = json['growth_rate'];
    droughtTolerant = json['drought_tolerant'];
    saltTolerant = json['salt_tolerant'];
    thorny = json['thorny'];
    invasive = json['invasive'];
    tropical = json['tropical'];
    indoor = json['indoor'];
    careLevel = json['care_level'];
    if (json['pest_susceptibility'] != null) {
      pestSusceptibility = [];
      json['pest_susceptibility'].forEach((v) {
        pestSusceptibility?.add(v.fromJson(v));
      });
    }
    pestSusceptibilityApi = json['pest_susceptibility_api'];
    flowers = json['flowers'];
    floweringSeason = json['flowering_season'];
    flowerColor = json['flower_color'];
    cones = json['cones'];
    fruits = json['fruits'];
    edibleFruit = json['edible_fruit'];
    edibleFruitTasteProfile = json['edible_fruit_taste_profile'];
    fruitNutritionalValue = json['fruit_nutritional_value'];
    if (json['fruit_color'] != null) {
      fruitColor = [];
      json['fruit_color'].forEach((v) {
        fruitColor?.add(v.fromJson(v));
      });
    }
    harvestSeason = json['harvest_season'];
    leaf = json['leaf'];
    leafColor =
        json['leaf_color'] != null ? json['leaf_color'].cast<String>() : [];
    edibleLeaf = json['edible_leaf'];
    cuisine = json['cuisine'];
    medicinal = json['medicinal'];
    poisonousToHumans = json['poisonous_to_humans'];
    poisonousToPets = json['poisonous_to_pets'];
    description = json['description'];
    defaultImage = json['default_image'] != null
        ? DefaultImage.fromJson(json['default_image'])
        : null;
    otherImages = json['other_images'];
  }

  num? id;
  String? commonName;
  List<String>? scientificName;
  List<String>? otherName;
  dynamic family;
  List<String>? origin;
  String? type;
  String? dimension;
  Dimensions? dimensions;
  String? cycle;
  List<dynamic>? attracts;
  List<String>? propagation;
  Hardiness? hardiness;
  HardinessLocation? hardinessLocation;
  String? watering;
  List<dynamic>? depthWaterRequirement;
  List<dynamic>? volumeWaterRequirement;
  dynamic wateringPeriod;
  WateringGeneralBenchmark? wateringGeneralBenchmark;
  List<dynamic>? plantAnatomy;
  List<String>? sunlight;
  List<String>? pruningMonth;
  List<dynamic>? pruningCount;
  num? seeds;
  dynamic maintenance;
  String? careGuides;
  List<dynamic>? soil;
  String? growthRate;
  bool? droughtTolerant;
  bool? saltTolerant;
  bool? thorny;
  bool? invasive;
  bool? tropical;
  bool? indoor;
  String? careLevel;
  List<dynamic>? pestSusceptibility;
  String? pestSusceptibilityApi;
  bool? flowers;
  dynamic floweringSeason;
  String? flowerColor;
  bool? cones;
  bool? fruits;
  bool? edibleFruit;
  String? edibleFruitTasteProfile;
  String? fruitNutritionalValue;
  List<dynamic>? fruitColor;
  dynamic harvestSeason;
  bool? leaf;
  List<String>? leafColor;
  bool? edibleLeaf;
  bool? cuisine;
  bool? medicinal;
  num? poisonousToHumans;
  num? poisonousToPets;
  String? description;
  DefaultImage? defaultImage;
  String? otherImages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['common_name'] = commonName;
    map['scientific_name'] = scientificName;
    map['other_name'] = otherName;
    map['family'] = family;
    map['origin'] = origin;
    map['type'] = type;
    map['dimension'] = dimension;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['cycle'] = cycle;
    if (attracts != null) {
      map['attracts'] = attracts?.map((v) => v.toJson()).toList();
    }
    map['propagation'] = propagation;
    if (hardiness != null) {
      map['hardiness'] = hardiness?.toJson();
    }
    if (hardinessLocation != null) {
      map['hardiness_location'] = hardinessLocation?.toJson();
    }
    map['watering'] = watering;
    if (depthWaterRequirement != null) {
      map['depth_water_requirement'] =
          depthWaterRequirement?.map((v) => v.toJson()).toList();
    }
    if (volumeWaterRequirement != null) {
      map['volume_water_requirement'] =
          volumeWaterRequirement?.map((v) => v.toJson()).toList();
    }
    map['watering_period'] = wateringPeriod;
    if (wateringGeneralBenchmark != null) {
      map['watering_general_benchmark'] = wateringGeneralBenchmark?.toJson();
    }
    if (plantAnatomy != null) {
      map['plant_anatomy'] = plantAnatomy?.map((v) => v.toJson()).toList();
    }
    map['sunlight'] = sunlight;
    map['pruning_month'] = pruningMonth;
    if (pruningCount != null) {
      map['pruning_count'] = pruningCount?.map((v) => v.toJson()).toList();
    }
    map['seeds'] = seeds;
    map['maintenance'] = maintenance;
    map['care-guides'] = careGuides;
    if (soil != null) {
      map['soil'] = soil?.map((v) => v.toJson()).toList();
    }
    map['growth_rate'] = growthRate;
    map['drought_tolerant'] = droughtTolerant;
    map['salt_tolerant'] = saltTolerant;
    map['thorny'] = thorny;
    map['invasive'] = invasive;
    map['tropical'] = tropical;
    map['indoor'] = indoor;
    map['care_level'] = careLevel;
    if (pestSusceptibility != null) {
      map['pest_susceptibility'] =
          pestSusceptibility?.map((v) => v.toJson()).toList();
    }
    map['pest_susceptibility_api'] = pestSusceptibilityApi;
    map['flowers'] = flowers;
    map['flowering_season'] = floweringSeason;
    map['flower_color'] = flowerColor;
    map['cones'] = cones;
    map['fruits'] = fruits;
    map['edible_fruit'] = edibleFruit;
    map['edible_fruit_taste_profile'] = edibleFruitTasteProfile;
    map['fruit_nutritional_value'] = fruitNutritionalValue;
    if (fruitColor != null) {
      map['fruit_color'] = fruitColor?.map((v) => v.toJson()).toList();
    }
    map['harvest_season'] = harvestSeason;
    map['leaf'] = leaf;
    map['leaf_color'] = leafColor;
    map['edible_leaf'] = edibleLeaf;
    map['cuisine'] = cuisine;
    map['medicinal'] = medicinal;
    map['poisonous_to_humans'] = poisonousToHumans;
    map['poisonous_to_pets'] = poisonousToPets;
    map['description'] = description;
    if (defaultImage != null) {
      map['default_image'] = defaultImage?.toJson();
    }
    map['other_images'] = otherImages;
    return map;
  }
}
