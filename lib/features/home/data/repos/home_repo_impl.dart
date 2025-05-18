// providers?page=1

import 'package:attack_on_titan_app/constants.dart';
import 'package:attack_on_titan_app/core/errors/failures.dart';
import 'package:attack_on_titan_app/core/models/character_model.dart';
import 'package:attack_on_titan_app/core/utils/api_service.dart';
import 'package:attack_on_titan_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CharacterModel>>> fetchDataCharacters() async {
    try {
      Map<String, dynamic> response = await apiService.get(
        endPoint: 'characters',
      );

      List<CharacterModel> characters = [];

      for (var character in response['results']) {
        characters.add(CharacterModel.fromJson(character));
      }

      return right(characters);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      }

      return left(ServiceFailure(kMessageFailure));
    }
  }
}
