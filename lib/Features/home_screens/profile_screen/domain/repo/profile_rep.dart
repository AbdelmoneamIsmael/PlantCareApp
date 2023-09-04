import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/home_screens/profile_screen/domain/entity/profile_entity.dart';
import 'package:plant_care/core/errors/failure.dart';

abstract class ProfileRepo{

  Future<Either<Failure,ProfileEntity>> fetchData();
  Future<Either<Failure,ProfileEntity>> updateData();
  Future<Either<Failure,ProfileEntity>> deleteUserData();
}