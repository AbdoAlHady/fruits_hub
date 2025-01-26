import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/failure.dart';
import 'package:fruits_hub/core/services/cache_helper.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/utils/firebase_keys.dart';
import 'package:fruits_hub/core/utils/prefs_keys.dart';
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
    User? user;
    try {
      user = await _service.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(id: user.uid, email: email, name: name);
      await addUserData(
        userEntity: userEntity,
      );
      return Right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await _service.deleteUser();
      }
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      if (user != null) {
        await _service.deleteUser();
      }
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
      var userEntity = await getUserData(userId: user.uid);
      saveUserData(userEntity: userEntity);
      return Right(userEntity);
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
    User? user;
    try {
      user = await _service.signInWithGoogle();

      var userEntity =
          UserEntity(id: user.uid, email: user.email!, name: user.displayName!);
      saveUserData(userEntity: userEntity);

      bool isExist = await _databaseService.checkIfDataExist(
        path: FirebaseKeys.usersCollection,
        documnetId: userEntity.id,
      );
      if (isExist) {
        await getUserData(userId: userEntity.id);
      } else {
        await addUserData(userEntity: userEntity);
      }
      return Right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await _service.deleteUser();
      }
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      if (user != null) {
        await _service.deleteUser();
      }
      logger.e("Exception in AuthRepoImpl.signInWithGoogle : ${e.toString()}");
      return Left(
          ServerFailure(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await _service.signInWithFacebook();
      var userEntity =
          UserEntity(id: user.uid, email: user.email!, name: user.displayName!);
      saveUserData(userEntity: userEntity);

      bool isExist = await _databaseService.checkIfDataExist(
          path: FirebaseKeys.usersCollection, documnetId: userEntity.id);
      if (isExist) {
        await getUserData(userId: userEntity.id);
      } else {
        await addUserData(userEntity: userEntity);
      }
      return Right(userEntity);
    } catch (e) {
      if (user != null) {
        await _service.deleteUser();
      }
      logger
          .e("Exception in AuthRepoImpl.signInWithFacebook : ${e.toString()}");
      return Left(
          ServerFailure(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية"));
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async {
    await _databaseService.addData(
        data: UserModel.formEntiy(userEntity).toMap(),
        path: FirebaseKeys.usersCollection,
        documentId: userEntity.id);
  }

  @override
  Future<UserEntity> getUserData({required String userId}) async {
    var data = await _databaseService.getData(
        path: FirebaseKeys.usersCollection, documnetId: userId);
    return UserModel.fromJson(data);
  }

  @override
  Future saveUserData({required UserEntity userEntity}) async {
    var jsonEncoded = jsonEncode(UserModel.formEntiy(userEntity).toMap());
    await CacheHelper().saveData(key: PrefsKeys.userData, value: jsonEncoded);
  }
}
