import 'package:dartz/dartz.dart';
import 'package:plant_care/core/errors/failure.dart';

import '../entity/explore_entity.dart';

abstract class ExploreAllRepo{
  Future<Either<Failure,List<ExploreEntity>>> fetchYouMayLikeIt();
  Future<Either<Failure,List<ExploreEntity>>> fetchStanderPosts();
}