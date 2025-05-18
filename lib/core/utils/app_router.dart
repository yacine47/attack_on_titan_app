import 'package:attack_on_titan_app/core/utils/service_locator.dart';
import 'package:attack_on_titan_app/features/home/presentation/view_models/characters_cubit/characters_cubit.dart';
import 'package:attack_on_titan_app/features/home/presentation/views/home_view.dart';
import 'package:attack_on_titan_app/features/splash/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: HomeView.path,
    routes: [
      GoRoute(
        path: SplashView.path,
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        path: HomeView.path,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: getIt.get<CharachtersCubit>()..getDataProviders(),
            ),
          ],
          child: const HomeView(),
        ),
      ),

      // SecureStorageService? secureStorageService = getIt.get<SecureStorageService>();
    ],
  );
}
