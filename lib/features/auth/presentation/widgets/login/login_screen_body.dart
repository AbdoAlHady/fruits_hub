import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_regex.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';
import 'package:fruits_hub/core/widgets/app_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/have_or_dont_have_account.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login/social_login_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: S.of(context).email,
              onSaved: (value) {
                email = value!;
              },
              validator: (value) {
                if (!AppRegex.isEmailValid(value!)) {
                  return S.of(context).validEmail;
                }
              },
            ),
            verticalSpace(16),
            PasswordField(
              onSaved: (value) {
                password = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return S.of(context).validPassword;
                }
              },
            ),

            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  S.of(context).forgotPassword,
                  style: AppTextStyles.font13LightGreenW600,
                ),
              ],
            ),
            verticalSpace(33),
            // Login Button
            AppCustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SigninCubit>().signinWithEmailAndPassword(
                      email.trim(), password.trim());
                }
              },
              text: S.of(context).login,
              height: 54.h,
            ),
            verticalSpace(33),
            // Have or Dont Have Account
            HaveOrDontHaveAccount(
                text1: S.of(context).dontHaveAccount,
                onTap: () {
                  context.pushNamed(Routes.signupScreen);
                },
                text2: S.of(context).createOne),
            verticalSpace(33),
            // Or Divider
            OrDivider(),
            verticalSpace(31),
            // Social Buttons
            SocialLoginButton(
              title: S.of(context).signInWithGoogle,
              image: AppImages.imagesGoogle,
              onPressed: () {
                context.read<SigninCubit>().signInWithGoogle();
              },
            ),
            verticalSpace(10),
            if (Platform.isIOS) ...[
              SocialLoginButton(
                title: S.of(context).signInWithApple,
                image: AppImages.imagesApple,
                onPressed: () {},
              ),
              verticalSpace(10),
            ],
            SocialLoginButton(
              title: S.of(context).signInWithFacebook,
              image: AppImages.imagesFacebook,
              onPressed: () {
                context.read<SigninCubit>().signinWithFacebook();
              },
            ),
          ],
        ),
      ),
    );
  }
}
