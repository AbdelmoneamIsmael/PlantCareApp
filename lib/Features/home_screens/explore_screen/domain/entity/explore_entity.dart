

import 'package:hive/hive.dart';
part 'explore_entity.g.dart';

@HiveType(typeId: 0)
class ExploreEntity {
  @HiveField(0)
  final num? plantId;
  @HiveField(1)
  final String? exImage;
  @HiveField(2)
  final String? plantDescription;
  @HiveField(3)
  final bool? exIsLiked;
  @HiveField(4)
  final bool? exIsSaved;

  ExploreEntity({
    required this.exIsLiked,
    required this.exIsSaved,
    required this.plantId,
    required this.exImage,
    required this.plantDescription,
  });
}
