import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/app_text_form_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved, required this.validator});
  final void Function(String?)? onSaved;
  final Function(String?) validator;
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
      validator: widget.validator,
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
