import 'package:attack_on_titan_app/constants.dart';
import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:attack_on_titan_app/core/widgets/custom_go_back_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: AppBar(
        title: Text(
          title,
          style: AppStyles.style17.copyWith(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        forceMaterialTransparency: true,
        leading: Row(
          children: [
            CustomGoBackButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
