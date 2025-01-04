import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String name;

  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
  });

  toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }

  // empty user entity
  factory UserEntity.empty() => UserEntity(id: '', email: '', name: '');

  @override
  List<Object?> get props => [id, email, name];
}
