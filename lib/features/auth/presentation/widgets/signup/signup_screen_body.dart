import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/utils/app_regex.dart';
import 'package:fruits_hub/core/widgets/app_custom_button.dart';
import 'package:fruits_hub/core/widgets/app_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/have_or_dont_have_account.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/signup/terms_and_conditions.dart';
import '../../../../../generated/l10n.dart';

class SignupScreenBody extends StatefulWidget {
  const SignupScreenBody({super.key});

  @override
  State<SignupScreenBody> createState() => _SignupScreenBodyState();
}

class _SignupScreenBodyState extends State<SignupScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  late String email, userName, password;
  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Full Name
          AppTextFormField(
            onSaved: (value) {
              userName = value!;
            },
            hintText: S.of(context).fullName,
            validator: (value) {
              if (value!.isEmpty) {
                return S.of(context).validFullName;
              }
            },
          ),
          verticalSpace(16),
          // Email
          AppTextFormField(
            hintText: S.of(context).email,
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              if (!AppRegex.isEmailValid(value ?? "")) {
                return S.of(context).validEmail;
              }
            },
          ),
          verticalSpace(16),
          // Password
          AppTextFormField(
            hintText: S.of(context).password,
            onSaved: (value) {
              password = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).validPassword;
              }
              if (!AppRegex.hasUpperCase(value)) {
                return S.of(context).passwordMustContainoneUppercaseLetter;
              }

              if (!AppRegex.hasLowerCase(value)) {
                return S.of(context).passwordMustContainoneLowercaseLetter;
              }
              if (!AppRegex.hasSpecialCharacter(value)) {
                return S.of(context).passwordMustContainoneSpecialCharacter;
              }
              if (!AppRegex.hasMinLength(value)) {
                return S.of(context).passwordMustContainEihtNumbers;
              }
            },
            keyboardType: TextInputType.visiblePassword,
            isObscureText: true,
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
          verticalSpace(16),
          // Trems And Conditions
          TermsAndConditions(),
          verticalSpace(30),
          // Sign Up Button
          AppCustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignupCubit>().createUser(
                      email: email, password: password, name: userName);
                } else {
                  setState(() {
                    autoValidate = AutovalidateMode.always;
                  });
                }
              },
              text: S.of(context).createNewAccount),
          verticalSpace(26),
          // Already have an account
          HaveOrDontHaveAccount(
              text1: S.of(context).alreadyHaveAccount,
              text2: S.of(context).login,
              onTap: () {
                context.pop();
              }),
        ],
      ),
    );
  }
}
