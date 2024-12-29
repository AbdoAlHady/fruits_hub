import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup/signup_state.dart';

import '../../../../../core/enums/enums.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authRepo) : super(SignupState());
  final AuthRepo _authRepo;

  /// Create user
  void createUser({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(state.copyWith(stateType: StateType.loading));
    final user = await _authRepo.createUserWithEmailAndPassword(
        email: email, password: password, name: name);
    user.fold(
      (failure) => emit(state.copyWith(
          stateType: StateType.failure, errorMessage: failure.message)),
      (user) => emit(state.copyWith(stateType: StateType.success, user: user)),
    );
  }
}
