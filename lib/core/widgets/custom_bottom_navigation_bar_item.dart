import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.iconPath,
    required this.activeIconPath,
    required this.isActive,
    required this.index,
    this.onTap,
  });

  final IconData iconPath;
  final IconData activeIconPath;
  final bool isActive;
  final int index;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(index);
          }
        },
        child: Container(
          color: Colors.transparent, // Ensures the full space is clickable
          alignment: Alignment.center,
          child: Icon(
            isActive ? activeIconPath : iconPath,
            size: 26,
            color: isActive ? Colors.black : AppColors.grey,
          ),
        ),
      ),
    );
  }
}
