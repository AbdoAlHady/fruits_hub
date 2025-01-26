import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }
  factory UserModel.formEntiy(UserEntity userEntity) {
    return UserModel(
      id: userEntity.id,
      name: userEntity.name,
      email: userEntity.email,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }
  toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }
}
