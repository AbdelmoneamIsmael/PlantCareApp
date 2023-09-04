import 'package:dartz/dartz.dart';
import 'package:plant_care/core/errors/failure.dart';

import '../entity/explore_entity.dart';

abstract class ExplorePopularRepo{
  Future<Either<Failure,List<ExploreEntity>>> fetchPopularPosts();

}