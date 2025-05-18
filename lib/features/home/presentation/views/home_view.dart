import 'package:attack_on_titan_app/core/utils/service_locator.dart';
import 'package:attack_on_titan_app/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String path = '/HomeView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<HomeCubit>(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          return Scaffold(
            // bottomNavigationBar: CustomBottomNavigationBar(
            //   currentIndex: state,
            //   onTap: (value) {
            //     BlocProvider.of<HomeCubit>(context).changeView(value);
            //   },
            // ),
            body: SafeArea(
              child: BlocProvider.of<HomeCubit>(context).views[state],
            ),
          );
        },
      ),
    );
  }
}
