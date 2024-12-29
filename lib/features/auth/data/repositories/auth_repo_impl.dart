import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/helper/logger_helper.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService _service;

  AuthRepoImpl({required FirebaseAuthService service}) : _service = service;
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final result = await _service.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebaseUser(result));
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      logger.e(
          "Exception in AuthRepoImpl.createUserWithEmailAndPassword : ${e.toString()}");
      return Left(ServerFailure(message: "حدث خطأ غير معروف"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final user = await _service.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      logger.e(
          "Exception in AuthRepoImpl.signInWithEmailAndPassword : ${e.toString()}");
      return Left(ServerFailure(message: "حدث خطأ غير معروف"));
    }
  }
}
