abstract class ExploreEntity {
  final String image;
  final String description;
  final bool isLiked;
  final String date;
  final bool isSaved;
  final num likeCount;

  ExploreEntity(
    this.image,
    this.description,
    this.isLiked,
    this.date,
    this.isSaved,
    this.likeCount,
  );
}
