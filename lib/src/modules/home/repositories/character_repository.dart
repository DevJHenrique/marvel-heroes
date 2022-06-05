import 'dart:convert';
import 'dart:io';

import 'package:marvel_heroes/src/modules/home/models/character_model.dart';

import 'interfaces/character_repository_interface.dart';
import 'package:flutter/services.dart' show rootBundle;

class CharacterRepository implements ICharacterRepository {
  final applicationFileData = 'assets/application.json';

  @override
  Future<CharacterModel> getCharacter(
      {required int id, required String type}) async {
    final String response =
        jsonDecode(File(applicationFileData).readAsStringSync());
    final data = await json.decode(response);
    List<dynamic> characters = data[type] as List;
    CharacterModel character = CharacterModel.fromMap(characters[id]);

    return Future.value(character);
  }

  @override
  Future<List<CharacterModel>> getCharactersByType(String type) {
    final json = jsonDecode(File(applicationFileData).readAsStringSync());
    List<dynamic> heroes = json['type'] as List;
    List<CharacterModel> characters = [];
    for (var element in heroes) {
      characters.add(CharacterModel.fromMap(element as Map<String, dynamic>));
    }
    return Future.value(characters);
  }

  @override
  Future<List<CharacterModel>> getAllCharacters() {
    final Map<String, dynamic> json =
        jsonDecode(File(applicationFileData).readAsStringSync());
    final charactersList = [];
    json.forEach((key, value) {
      for (var element in value) {
        charactersList.add(value[value.indexOf(element)]);
      }
    });
    List<CharacterModel> characters = [];
    for (var element in charactersList) {
      characters.add(CharacterModel.fromMap(element as Map<String, dynamic>));
    }

    return Future.value(characters);
  }
}
