import 'package:attack_on_titan_app/core/utils/api_service.dart';
import 'package:attack_on_titan_app/features/home/data/repos/home_repo_impl.dart';
import 'package:attack_on_titan_app/features/home/presentation/view_models/characters_cubit/characters_cubit.dart';
import 'package:attack_on_titan_app/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  //apis
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
  //repos
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));

  //services

  // cubits
  // getIt.registerSingleton<ProviderCubit>(ProviderCubit(getIt.get<HomeRepoImpl>()));
  getIt.registerSingleton<HomeCubit>(HomeCubit());
  getIt.registerSingleton<CharachtersCubit>(CharachtersCubit(getIt.get<HomeRepoImpl>()));
}
