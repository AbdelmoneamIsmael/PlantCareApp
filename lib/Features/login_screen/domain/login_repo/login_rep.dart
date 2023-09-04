import 'package:dartz/dartz.dart';
import 'package:plant_care/core/errors/failure.dart';

abstract class LoginRepo{
  Future<Either<Failure,bool>> makeLogin();
}