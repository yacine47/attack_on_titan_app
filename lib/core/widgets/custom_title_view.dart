import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleView extends StatelessWidget {
  const CustomTitleView({
    super.key,
    this.title = 'Book Appointment',
    this.paddingHorizonal = 0,
  });
  final double paddingHorizonal;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizonal),
      child: Text(
        title,
        style: AppStyles.style24.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.text900,
        ),
      ),
    );
  }
}
