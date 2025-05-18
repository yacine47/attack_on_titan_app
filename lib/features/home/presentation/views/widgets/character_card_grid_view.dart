import 'package:attack_on_titan_app/core/models/character_model.dart';
import 'package:attack_on_titan_app/features/home/presentation/views/widgets/character_card.dart';
import 'package:flutter/material.dart';

class CharacterCardGridView extends StatelessWidget {
  const CharacterCardGridView({super.key, required this.characters, required this.isLoading});
  final List<CharacterModel> characters;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    List<CharacterModel> fakeCharacters = List.filled(10, CharacterModel.fakeCharacter);

    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 0,
        mainAxisSpacing: 4,
      ),
      itemCount: characters.isNotEmpty ? characters.length : fakeCharacters.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CharacterCard(
          isLoading: isLoading,
          character: characters.isNotEmpty ? characters[index] : fakeCharacters[index],
          onTap: () {},
        );
      },
    );
  }
}
