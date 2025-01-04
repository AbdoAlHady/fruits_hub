import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/enums/enums.dart';
import 'package:fruits_hub/core/helper/show_toast.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login/login_screen_body.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreenBodyBlocConsumer extends StatelessWidget {
  const LoginScreenBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state.stateType == StateType.success) {
          showToast(
              context: context,
              message: S.of(context).loginSuccess,
              type: ToastType.success);

          //TODO: Navigate to home screen
        } else if (state.stateType == StateType.failure) {
          showToast(
              context: context,
              message: state.errorMessage,
              type: ToastType.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state.stateType == StateType.loading,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: LoginScreenBody(),
          ),
        );
      },
    );
  }
}
