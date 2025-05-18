import 'package:attack_on_titan_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String path = '/SplashView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
