import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import 'package:plant_care/core/errors/failure.dart';

import '../../domain/explore_screens_repo/explore_new_repo.dart';
import '../data/local_data_source/explore_new_local_data_source.dart';
import '../data/remote_data_source/explore_new_remote_source.dart';

class ExploreNewRepoImpl extends ExploreNewRepo{
  final ExploreNewLocalDataSourceImpl exploreNewLocalDataSourceImpl;
  final ExploreNewDataSourceImplement exploreNewRemoteDataSourceImplement;

  ExploreNewRepoImpl(
      {required this.exploreNewLocalDataSourceImpl,
     required this.exploreNewRemoteDataSourceImplement});
  @override
  Future<Either<Failure, List<ExploreEntity>>> fetchNewPosts()async {
    try {
      List<ExploreEntity> exploreDataLocal=exploreNewLocalDataSourceImpl.fetchNewPosts();
      if(exploreDataLocal.isNotEmpty){
        return right(exploreDataLocal);
      }
      List<ExploreEntity> exploreDataRemote= await exploreNewRemoteDataSourceImplement.fetchNewPosts();
      return  right(exploreDataRemote);
    } on FirebaseException catch (e) {
      return left(Failure(firebaseException: e));
    }
  }
}