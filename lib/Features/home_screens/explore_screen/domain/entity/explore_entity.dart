class ExploreEntity {
  final num? plantId;
  final String? exImage;
  final String? plantDescription;
  final bool? exIsLiked;
  final bool? exIsSaved;

  ExploreEntity({
    required this.exIsLiked,
    required this.exIsSaved,
    required this.plantId,
    required this.exImage,
    required this.plantDescription,
  });
}
