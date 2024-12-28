import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  /// Sign in with email and password
  Future<UserEntity> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
