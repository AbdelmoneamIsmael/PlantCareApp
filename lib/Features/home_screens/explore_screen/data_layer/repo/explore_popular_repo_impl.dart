import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import 'package:plant_care/core/errors/failure.dart';

import '../../domain/explore_screens_repo/explore_popular_repo.dart';
import '../data/local_data_source/explore_popular_local_data_source.dart';
import '../data/remote_data_source/explore_popular_remote_source.dart';

class ExplorePopularRepoImpl extends ExplorePopularRepo{
  final ExplorePopularLocalDataSourceImpl explorePopularLocalDataSourceImpl;
  final ExplorePopularDataSourceImplement explorePopularRemoteDataSourceImplement;

  ExplorePopularRepoImpl(
      {required this.explorePopularLocalDataSourceImpl,
        required this.explorePopularRemoteDataSourceImplement});
  @override
  Future<Either<Failure, List<ExploreEntity>>> fetchPopularPosts()async {
    try {
      List<ExploreEntity> exploreDataLocal=explorePopularLocalDataSourceImpl.fetchPopularPosts();
      if(exploreDataLocal.isNotEmpty){
        return right(exploreDataLocal);
      }
      List<ExploreEntity> exploreDataRemote= await explorePopularRemoteDataSourceImplement.fetchPopularPosts();
      return  right(exploreDataRemote);
    } on FirebaseException catch (e) {
      return left(Failure(e.message.toString()));
    }
  }


}