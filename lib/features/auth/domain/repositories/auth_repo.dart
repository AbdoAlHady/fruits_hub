import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/error/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  /// Sign in with email and password
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  /// Login With Email and Password
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Sign in with Google
  Future<Either<Failure, UserEntity>> signInWithGoogle();
}
