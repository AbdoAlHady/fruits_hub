import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/failure.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/utils/firebase_keys.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/helper/logger_helper.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService _service;
  final DatabaseService _databaseService;

  AuthRepoImpl(
      {required FirebaseAuthService service, required DatabaseService dataBase})
      : _service = service,
        _databaseService = dataBase;
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final result = await _service.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModel.fromFirebaseUser(result);
      await saveUserData(userEntity: userEntity);
      return Right(userEntity);
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

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      final user = await _service.signInWithGoogle();

      var userEntity = UserModel.fromFirebaseUser(user);
      await saveUserData(userEntity: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      logger.e("Exception in AuthRepoImpl.signInWithGoogle : ${e.toString()}");
      return Left(
          ServerFailure(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      final user = await _service.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await saveUserData(userEntity: userEntity);
      return Right(userEntity);
    } catch (e) {
      logger
          .e("Exception in AuthRepoImpl.signInWithFacebook : ${e.toString()}");
      return Left(
          ServerFailure(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية"));
    }
  }

  @override
  Future saveUserData({required UserEntity userEntity}) async {
    try {
      await _databaseService.addData(
          data: userEntity.toMap(), path: FirebaseKeys.usersCollection);
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      logger.e("Exception in AuthRepoImpl.saveUserData : ${e.toString()}");
      return Left(ServerFailure(message: "حدث خطأ غير معروف"));
    }
  }
}
