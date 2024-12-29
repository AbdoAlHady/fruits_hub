import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login/login_screen_body_bloc_consumer.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt()),
      child: Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).login,
          showArrowBack: false,
        ),
        body: LoginScreenBodyBlocConsumer(),
      ),
    );
  }
}
