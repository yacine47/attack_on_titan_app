import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.purple,
    this.paddingHorizontal = 0,
    this.child,
    this.fontWeight = FontWeight.w400,
    this.flex = 1,
    this.height = 64,
    this.useExpanded = false,
    this.isLoading = false,
  });
  final String title;
  final bool isLoading;
  final Widget? child;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double paddingHorizontal;
  final int flex;
  final bool useExpanded;
  final double height;

  @override
  Widget build(BuildContext context) {
    return useExpanded
        ? Expanded(
            flex: flex,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              height: height,
              child: ElevatedButton(
                onPressed: onPressed,
                // icon:
                // label:
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Please Wait...',
                              style: AppStyles.style16.copyWith(
                                color: Colors.white,
                                fontWeight: fontWeight,
                              ),
                            ),
                          ],
                        )
                      : child == null
                          ? Text(
                              title,
                              style: AppStyles.style16.copyWith(
                                color: Colors.white,
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  title,
                                  style: AppStyles.style16.copyWith(
                                    color: Colors.white,
                                    fontWeight: fontWeight,
                                  ),
                                ),
                                child!,
                              ],
                            ),
                ),
              ),
            ),
          )
        : Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                  height: height,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    // icon:
                    // label:
                    style: ElevatedButton.styleFrom(
                      // padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 18,
                                  width: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  'Please Wait...',
                                  style: AppStyles.style16.copyWith(
                                    color: Colors.white,
                                    fontWeight: fontWeight,
                                  ),
                                ),
                              ],
                            )
                          : child == null
                              ? Text(
                                  title,
                                  style: AppStyles.style16.copyWith(
                                    color: Colors.white,
                                  ),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      title,
                                      style: AppStyles.style16.copyWith(
                                        color: Colors.white,
                                        fontWeight: fontWeight,
                                      ),
                                    ),
                                    child!,
                                  ],
                                ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
