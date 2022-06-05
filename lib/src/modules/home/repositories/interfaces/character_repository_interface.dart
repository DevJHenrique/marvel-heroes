import 'package:marvel_heroes/src/modules/home/models/character_model.dart';

abstract class ICharacterRepository {
  Future<List<CharacterModel>> getCharactersByType(String type);
  Future<List<CharacterModel>> getAllCharacters();
  Future<CharacterModel> getCharacter({required int id, required String type});
}
