import 'package:mobx/mobx.dart';
import 'models/character_model.dart';
import 'repositories/interfaces/character_repository_interface.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  _HomeStoreBase(this.repository);
  final ICharacterRepository repository;

  @observable
  bool loaded = false;

  @observable
  List<CharacterModel>? heroesList;
  @observable
  List<CharacterModel>? villainsList;
  @observable
  List<CharacterModel>? antiHeroesList;
  @observable
  List<CharacterModel>? aliensList;
  @observable
  List<CharacterModel>? humansList;

  @observable
  List<CharacterModel>? allCharacterList;

  @action
  Future<void> loadHomeCharacters() async {
    allCharacterList = await repository.getAllCharacters();
  }

  @action
  Future<void> loadHomeCharactersByType(String characterType) async {
    if (characterType == 'heroes' && heroesList == null) {
      heroesList = await repository.getCharactersByType(characterType);
    }
    if (characterType == 'villains' && villainsList == null) {
      villainsList = await repository.getCharactersByType(characterType);
    }
    if (characterType == 'antiHeroes' && antiHeroesList == null) {
      antiHeroesList = await repository.getCharactersByType(characterType);
    }
    if (characterType == 'aliens' && aliensList == null) {
      aliensList = await repository.getCharactersByType(characterType);
    }
    if (characterType == 'humans' && humansList == null) {
      humansList = await repository.getCharactersByType(characterType);
    }
  }
}
