import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/spacing.dart';
import 'package:fruits_hub/core/theme/app_colors.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDivider(),
        horizontalSpace(17),
        Text(
          S.of(context).or,
          style: AppTextStyles.font16W600,
        ),
        horizontalSpace(17),
        _buildDivider(),
      ],
    );
  }

  Expanded _buildDivider() {
    return Expanded(
      child: Divider(
        color: AppColors.lightGrey,
        thickness: 1.5,
        height: 0,
      ),
    );
  }
}
