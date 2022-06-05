import 'package:marvel_heroes/src/modules/home/models/character_model.dart';
import 'package:marvel_heroes/src/modules/home/repositories/interfaces/character_repository_interface.dart';
import 'package:mocktail/mocktail.dart';

class CharacterRepositoryMock extends Mock implements ICharacterRepository {}

class CharacterModelMock extends Mock implements CharacterModel {}
