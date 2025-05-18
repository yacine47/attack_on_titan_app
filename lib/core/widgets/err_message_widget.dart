import 'package:attack_on_titan_app/constants.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ErrMessageWidget extends StatelessWidget {
  const ErrMessageWidget({
    super.key,
    required this.errMessage,
    this.paddingHor = kPaddingHorizontal,
  });
  final String? errMessage;
  final double paddingHor;
  @override
  Widget build(BuildContext context) {
    return errMessage != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                errMessage!,
                textAlign: TextAlign.center,
                style: AppStyles.style14.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
