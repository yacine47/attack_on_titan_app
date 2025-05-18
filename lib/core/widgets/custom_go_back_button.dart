import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CustomGoBackButton extends StatelessWidget {
  const CustomGoBackButton({super.key, this.color, this.size = 24});
  final Color? color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            IconsaxPlusLinear.arrow_left,
            size: size,
            color: color,
          ),
          onPressed: () {
            if (GoRouter.of(context).canPop()) GoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
