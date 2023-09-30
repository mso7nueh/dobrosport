import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final bool? obscureText;
  final Widget? suffixIcon;

  const CustomTextFormFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: TextStyles.medium16.copyWith(color: Colors.black),
      keyboardType: textInputType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(16.0),
        filled: true,
        fillColor: AppColors.grey3,
        hintText: hintText,
        hintStyle: TextStyles.medium16.copyWith(color: AppColors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      cursorColor: AppColors.accent,
    );
  }
}
