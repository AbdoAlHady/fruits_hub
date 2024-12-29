import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_regex.dart';
import 'package:fruits_hub/core/widgets/app_text_form_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: S.of(context).password,
      onSaved: widget.onSaved,
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
      isObscureText: isObscureText,
      suffixIcon: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            isObscureText = !isObscureText;
          });
        },
        icon: Icon(isObscureText ? Icons.remove_red_eye : Icons.visibility_off),
      ),
    );
  }
}
