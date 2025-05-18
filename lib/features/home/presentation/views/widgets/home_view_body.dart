import 'package:attack_on_titan_app/constants.dart';
import 'package:attack_on_titan_app/core/utils/app_styles.dart';
import 'package:attack_on_titan_app/features/home/presentation/view_models/characters_cubit/characters_cubit.dart';
import 'package:attack_on_titan_app/features/home/presentation/views/widgets/character_card_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharachtersCubit, CharachterState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: kPaddingHorizontal),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Characters',
                  style: AppStyles.style24.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 24),
                CharacterCardGridView(
                  characters: state is CharachterSuccess ? state.providers : [],
                  isLoading: state is! CharachterSuccess,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
