import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.text100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: AppStyles.style13.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.text900,
        ),
      ),
    );
  }
}
