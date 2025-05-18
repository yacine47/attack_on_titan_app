import 'package:attack_on_titan_app/core/utils/app_colors.dart';
import 'package:attack_on_titan_app/core/utils/app_fonts.dart';
import 'package:attack_on_titan_app/core/utils/app_router.dart';
import 'package:attack_on_titan_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const AttackOnTitanApp());
}

class AttackOnTitanApp extends StatelessWidget {
  const AttackOnTitanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Attack on Titan',
      theme: ThemeData(
        // brightness: Brightness.dark,
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
    );
  }
}
