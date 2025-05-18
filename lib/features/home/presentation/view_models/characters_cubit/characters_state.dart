part of 'characters_cubit.dart';

abstract class CharachterState {}

class CharachterInitial extends CharachterState {}

class CharachterLoading extends CharachterState {}

class CharachterSuccess extends CharachterState {
  final List<CharacterModel> providers;

  CharachterSuccess(this.providers);
}

class CharachterFailure extends CharachterState {
  final String errMessage;

  CharachterFailure(this.errMessage);
}
