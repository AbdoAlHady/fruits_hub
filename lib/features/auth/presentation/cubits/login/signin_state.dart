part of 'signin_cubit.dart';

class SigninState extends Equatable {
  final UserEntity? user;
  final String errorMessage;
  final StateType stateType;

  const SigninState(
      {this.user, this.errorMessage = "", this.stateType = StateType.initial});

  SigninState copyWith({
    UserEntity? user,
    String? errorMessage,
    StateType? stateType,
  }) {
    return SigninState(
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
      stateType: stateType ?? this.stateType,
    );
  }

  @override
  List<Object> get props => [
        user!,
        errorMessage,
        stateType,
      ];
}
