import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAccentButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const CustomAccentButtonWidget({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Center(
        child: Text(
          title,
          style: TextStyles.medium16.copyWith(
            color: onTap == null ? Colors.black : Colors.white,
          ),
        ),
      ),
      tileColor: onTap == null ? AppColors.grey3 : AppColors.accent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48.0),
      ),
    );
  }
}
