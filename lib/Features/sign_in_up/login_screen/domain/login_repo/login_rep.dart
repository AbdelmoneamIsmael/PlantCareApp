import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/sign_in_up/login_screen/domain/entity/login_entity.dart';
import 'package:plant_care/core/errors/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserInformation>> makeLogin();
}
