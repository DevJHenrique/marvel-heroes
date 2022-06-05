import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/src/modules/home/models/character_model.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/const.dart';
import '../../../../mocks/mocks.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('deve retornar uma lista de Heroes', () async {
    final repository = CharacterRepositoryMock();
    final model = CharacterModelMock();

    when(() => repository.getCharactersByType('heroes'))
        .thenAnswer((_) => Future.value([model]));

    final result = await repository.getCharactersByType('heroes');

    expect(result, isA<List<CharacterModel>>());
  });

  test('deve retornar Homem Aranha', () async {
    final repository = CharacterRepositoryMock();

    final character = CharacterModel.fromMap(JSON_CONST['heroes']![0]);

    when(() => repository.getCharacter(id: 0, type: 'heroes'))
        .thenAnswer((_) => Future.value(character));

    final result = await repository.getCharacter(id: 0, type: 'heroes');

    expect(result.name, "Homem Aranha");
  });

  test('deve retornar Caveira Vermelha', () async {
    final repository = CharacterRepositoryMock();

    final character = CharacterModel.fromMap(JSON_CONST['villains']![0]);

    when(() => repository.getCharacter(id: 0, type: 'villains'))
        .thenAnswer((_) => Future.value(character));

    final result = await repository.getCharacter(id: 0, type: 'villains');

    expect(result.name, "Caveira Vermelha");
  });

  test('deve retornar todos os personagens', () async {
    final repository = CharacterRepositoryMock();

    final charactersList = [];
    JSON_CONST.forEach((key, value) {
      for (var element in value) {
        charactersList.add(value[value.indexOf(element)]);
      }
    });
    List<CharacterModel> characters = [];
    for (var element in charactersList) {
      characters.add(CharacterModel.fromMap(element as Map<String, dynamic>));
    }

    when(() => repository.getAllCharacters())
        .thenAnswer((_) => Future.value(characters));

    final result = await repository.getAllCharacters();

    expect(result.length, 15);
    expect(result[0].name, "Homem Aranha");
    expect(result[1].name, "Pantera Negra");
    expect(result[2].name, "Homem de Ferro");
    expect(result[3].name, "Caveira Vermelha");
    expect(result[4].name, "Doutor Destino");
    expect(result[5].name, "Duende Verde");
    expect(result[6].name, "Deadpool");
    expect(result[7].name, "Venom");
    expect(result[8].name, "Justiceiro");
    expect(result[9].name, "Thanos");
    expect(result[10].name, "Ronan");
    expect(result[11].name, "Talos");
    expect(result[12].name, "Howard Stark");
    expect(result[13].name, "Mary Jane");
    expect(result[14].name, "Happy Hogan");
  });
}
