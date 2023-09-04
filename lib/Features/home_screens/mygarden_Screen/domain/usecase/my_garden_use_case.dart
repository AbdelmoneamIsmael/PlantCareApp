import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/home_screens/mygarden_Screen/domain/entity/my_garden_entity.dart';

import 'package:plant_care/core/errors/failure.dart';
import 'package:plant_care/core/use_case/use_cases.dart';

import '../repo/my_garden_repo.dart';

class FetchGardenPostsUseCAse extends UseCase<List<MyGardenEntity>,NoParam>{
  final MyGardenRepo myGardenRepo;

  FetchGardenPostsUseCAse(this.myGardenRepo);
  @override
  Future<Either<Failure, List<MyGardenEntity>>> call([NoParam? param]) async {
      return await myGardenRepo.fetchMyGardenItems();
  }

}