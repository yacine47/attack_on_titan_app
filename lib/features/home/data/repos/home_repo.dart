import 'package:attack_on_titan_app/core/errors/failures.dart';
import 'package:attack_on_titan_app/core/models/character_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CharacterModel>>> fetchDataCharacters();
}
