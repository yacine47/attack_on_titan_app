import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/widgets/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, this.onTap, required this.currentIndex});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        height: 64,
        padding: EdgeInsets.only(
          right: 12,
          left: 12,
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            CustomBottomNavigationBarItem(
              iconPath: IconsaxPlusLinear.home_2,
              activeIconPath: IconsaxPlusBold.home_2,
              isActive: currentIndex == 0,
              index: 0,
              onTap: onTap,
            ),
            // CustomBottomNavigationBarItem(
            //   iconPath: IconsaxPlusLinear.location,
            //   activeIconPath: IconsaxPlusBold.location,
            //   isActive: currentIndex == 1,
            //   index: 1,
            //   onTap: onTap,
            // ),
            CustomBottomNavigationBarItem(
              iconPath: IconsaxPlusLinear.calendar_2,
              activeIconPath: IconsaxPlusBold.calendar_2,
              isActive: currentIndex == 1,
              index: 1,
              onTap: onTap,
            ),
            // CustomBottomNavigationBarItem(
            CustomBottomNavigationBarItem(
              iconPath: Icons.favorite_outline,
              activeIconPath: Icons.favorite,
              isActive: currentIndex == 2,
              index: 2,
              onTap: onTap,
            ),
            // CustomBottomNavigationBarItem(
            //   iconPath: IconsaxPlusLinear.message,
            //   activeIconPath: IconsaxPlusBold.message,
            //   isActive: currentIndex == 3,
            //   index: 3,
            //   onTap: onTap,
            // ),
            // CustomBottomNavigationBarItem(
            //   iconPath: IconsaxPlusLinear.user,
            //   activeIconPath: IconsaxPlusBold.user,
            //   isActive: currentIndex == 4,
            //   index: 4,
            //   onTap: onTap,
            // ),
          ],
        ),
      ),
    );
  }
}
