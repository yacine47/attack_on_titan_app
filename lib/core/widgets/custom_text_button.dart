import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    this.color = AppColors.grey,
    this.fontWeight = FontWeight.w600,
    this.flex = 1,
    this.onTap,
  });
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final int flex;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SizedBox(
        height: 64,
        child: TextButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            // padding: EdgeInsets.symmetric(vertical: 17),
          ),
          onPressed: onTap ?? () => GoRouter.of(context).pop(),
          child: Text(
            title,
            style: AppStyles.style16.copyWith(
              fontWeight: fontWeight,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
