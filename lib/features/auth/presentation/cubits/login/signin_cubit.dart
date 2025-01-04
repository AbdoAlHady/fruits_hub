import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/enums/enums.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repositories/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this._repo) : super(SigninState());
  final AuthRepo _repo;

  void signinWithEmailAndPassword(String email, String password) async {
    emit(state.copyWith(stateType: StateType.loading));
    final result = await _repo.signInWithEmailAndPassword(
        email: email, password: password);
    result.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message, stateType: StateType.failure)),
        (user) =>
            emit(state.copyWith(user: user, stateType: StateType.success)));
  }

  /// Sign In with Google
  void signInWithGoogle() async {
    emit(state.copyWith(stateType: StateType.loading));
    final user = await _repo.signInWithGoogle();
    user.fold(
      (failure) => emit(state.copyWith(
          stateType: StateType.failure, errorMessage: failure.message)),
      (user) => emit(state.copyWith(stateType: StateType.success, user: user)),
    );
  }

  /// Signin With Facebook
  void signinWithFacebook() async {
    emit(state.copyWith(stateType: StateType.loading));
    final user = await _repo.signInWithFacebook();
    user.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message, stateType: StateType.failure)),
        (user) =>
            emit(state.copyWith(stateType: StateType.success, user: user)));
  }
}
