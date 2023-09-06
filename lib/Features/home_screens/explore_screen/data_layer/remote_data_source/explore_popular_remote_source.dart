import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entity/explore_entity.dart';
import '../models/Plant_details.dart';
abstract class ExplorePopularDataSource{
  Future<List<ExploreEntity>> fetchPopularPosts();
}


class ExplorePopularDataSourceImplement extends ExplorePopularDataSource{
  @override
  Future<List<ExploreEntity>> fetchPopularPosts() async {
    List<ExploreEntity> exploreAll=[];

    await FirebaseFirestore.instance
        .collection('Plants')
        .get()
        .then(
          (value) =>
          value.docs.forEach((element) {
            exploreAll.add( PlantDetails.fromJson(element.data())) ;
          }),

    );
    return exploreAll;
  }
}