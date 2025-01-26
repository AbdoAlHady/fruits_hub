import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/get_user_data.dart';
import 'package:fruits_hub/core/theme/app_text_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_notification_icon.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppImages.imagesProfileImage),
      title: Text(
        'صباح الخير..!',
        style: AppTextStyles.font16GreyW400,
      ),
      subtitle: Text(
        getUserData().name,
        style: AppTextStyles.font16DarkBlueW700,
      ),
      trailing: CustomNotificationIcon(),
    );
  }
}
