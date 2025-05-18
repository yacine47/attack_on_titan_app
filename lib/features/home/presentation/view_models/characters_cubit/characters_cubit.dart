import 'package:attack_on_titan_app/core/models/character_model.dart';
import 'package:attack_on_titan_app/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';

part 'characters_state.dart';

class CharachtersCubit extends Cubit<CharachterState> {
  CharachtersCubit(this.homeRepo) : super(CharachterInitial());

  final HomeRepo homeRepo;
  Future<void> getDataProviders() async {
    emit(CharachterLoading());

    var result = await homeRepo.fetchDataCharacters();

    result.fold(
      (failure) => emit(CharachterFailure(failure.error)),
      (characters) {
        emit(CharachterSuccess(characters));
      },
    );
  }
}
