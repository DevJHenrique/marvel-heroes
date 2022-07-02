// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$loadedAtom =
      Atom(name: '_HomeStoreBase.loaded', context: context);

  @override
  bool get loaded {
    _$loadedAtom.reportRead();
    return super.loaded;
  }

  @override
  set loaded(bool value) {
    _$loadedAtom.reportWrite(value, super.loaded, () {
      super.loaded = value;
    });
  }

  late final _$heroesListAtom =
      Atom(name: '_HomeStoreBase.heroesList', context: context);

  @override
  List<CharacterModel>? get heroesList {
    _$heroesListAtom.reportRead();
    return super.heroesList;
  }

  @override
  set heroesList(List<CharacterModel>? value) {
    _$heroesListAtom.reportWrite(value, super.heroesList, () {
      super.heroesList = value;
    });
  }

  late final _$villainsListAtom =
      Atom(name: '_HomeStoreBase.villainsList', context: context);

  @override
  List<CharacterModel>? get villainsList {
    _$villainsListAtom.reportRead();
    return super.villainsList;
  }

  @override
  set villainsList(List<CharacterModel>? value) {
    _$villainsListAtom.reportWrite(value, super.villainsList, () {
      super.villainsList = value;
    });
  }

  late final _$antiHeroesListAtom =
      Atom(name: '_HomeStoreBase.antiHeroesList', context: context);

  @override
  List<CharacterModel>? get antiHeroesList {
    _$antiHeroesListAtom.reportRead();
    return super.antiHeroesList;
  }

  @override
  set antiHeroesList(List<CharacterModel>? value) {
    _$antiHeroesListAtom.reportWrite(value, super.antiHeroesList, () {
      super.antiHeroesList = value;
    });
  }

  late final _$aliensListAtom =
      Atom(name: '_HomeStoreBase.aliensList', context: context);

  @override
  List<CharacterModel>? get aliensList {
    _$aliensListAtom.reportRead();
    return super.aliensList;
  }

  @override
  set aliensList(List<CharacterModel>? value) {
    _$aliensListAtom.reportWrite(value, super.aliensList, () {
      super.aliensList = value;
    });
  }

  late final _$humansListAtom =
      Atom(name: '_HomeStoreBase.humansList', context: context);

  @override
  List<CharacterModel>? get humansList {
    _$humansListAtom.reportRead();
    return super.humansList;
  }

  @override
  set humansList(List<CharacterModel>? value) {
    _$humansListAtom.reportWrite(value, super.humansList, () {
      super.humansList = value;
    });
  }

  late final _$allCharacterListAtom =
      Atom(name: '_HomeStoreBase.allCharacterList', context: context);

  @override
  List<CharacterModel>? get allCharacterList {
    _$allCharacterListAtom.reportRead();
    return super.allCharacterList;
  }

  @override
  set allCharacterList(List<CharacterModel>? value) {
    _$allCharacterListAtom.reportWrite(value, super.allCharacterList, () {
      super.allCharacterList = value;
    });
  }

  late final _$loadHomeCharactersAsyncAction =
      AsyncAction('_HomeStoreBase.loadHomeCharacters', context: context);

  @override
  Future<void> loadHomeCharacters() {
    return _$loadHomeCharactersAsyncAction
        .run(() => super.loadHomeCharacters());
  }

  late final _$loadHomeCharactersByTypeAsyncAction =
      AsyncAction('_HomeStoreBase.loadHomeCharactersByType', context: context);

  @override
  Future<void> loadHomeCharactersByType(String characterType) {
    return _$loadHomeCharactersByTypeAsyncAction
        .run(() => super.loadHomeCharactersByType(characterType));
  }

  @override
  String toString() {
    return '''
loaded: ${loaded},
heroesList: ${heroesList},
villainsList: ${villainsList},
antiHeroesList: ${antiHeroesList},
aliensList: ${aliensList},
humansList: ${humansList},
allCharacterList: ${allCharacterList}
    ''';
  }
}
