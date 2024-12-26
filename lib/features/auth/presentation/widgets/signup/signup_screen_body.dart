import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';
import 'package:fruits_hub/core/widgets/app_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/have_or_dont_have_account.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/signup/terms_and_conditions.dart';
import '../../../../../generated/l10n.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Full Name
        AppTextFormField(
          hintText: S.of(context).fullName,
          validator: (value) {},
        ),
        verticalSpace(16),
        // Email
        AppTextFormField(
          hintText: S.of(context).email,
          validator: (value) {},
        ),
        verticalSpace(16),
        // Password
        AppTextFormField(
          hintText: S.of(context).password,
          validator: (value) {},
          keyboardType: TextInputType.visiblePassword,
          isObscureText: true,
          suffixIcon: Icon(Icons.remove_red_eye),
        ),
        verticalSpace(16),
        // Trems And Conditions
        TermsAndConditions(),
        verticalSpace(30),
        // Sign Up Button
        AppCustomButton(onPressed: () {}, text: S.of(context).createNewAccount),
        verticalSpace(26),
        // Already have an account
        HaveOrDontHaveAccount(
            text1: S.of(context).alreadyHaveAccount,
            text2: S.of(context).login,
            onTap: () {
              context.pop();
            }),
      ],
    );
  }
}
