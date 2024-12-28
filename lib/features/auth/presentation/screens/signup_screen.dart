import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/signup/signup_body_bloc_consumer.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt()),
      child: Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).createNewAccount,
          showArrowBack: true,
        ),
        body: SignupBodyBlocConsumer(),
      ),
    );
  }
}
