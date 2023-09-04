import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/home_screens/mygarden_Screen/domain/entity/my_garden_entity.dart';
import 'package:plant_care/core/errors/failure.dart';

abstract class MyGardenRepo{
   Future<Either<Failure,List<MyGardenEntity>>> fetchMyGardenItems();
}