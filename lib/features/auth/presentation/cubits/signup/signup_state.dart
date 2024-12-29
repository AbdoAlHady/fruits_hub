import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/enums/enums.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class SignupState extends Equatable {
  final StateType stateType;
  final UserEntity? user;
  final String errorMessage;

  const SignupState(
      {this.stateType = StateType.initial, this.user, this.errorMessage = ''});

  SignupState copyWith({
    StateType? stateType,
    UserEntity? user,
    String? errorMessage,
  }) {
    return SignupState(
      stateType: stateType ?? this.stateType,
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [stateType, user, errorMessage];
}
