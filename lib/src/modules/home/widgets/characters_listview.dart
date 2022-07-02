import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../scroll_behavior.dart';
import '../models/character_model.dart';
import 'character_card.dart';

class CharacterListView extends StatelessWidget {
  CharacterListView({Key? key, required this.characters}) : super(key: key);

  final List<CharacterModel>? characters;

  final scrollBehavior = Modular.get<CustomScrollBehavior>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ScrollConfiguration(
        behavior: scrollBehavior,
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 24, right: 24),
            itemCount: characters?.length ?? 0,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(right: 16),
                child: CharacterCard(
                  cardTitle: characters?[index].name ?? "",
                  cardSubtitle: characters?[index].alterEgo ?? "",
                  imagePath:
                      './assets${characters?[index].imagePath?.replaceFirst('.', '')}',
                ),
              );
            }),
      ),
    );
  }
}
