import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes/src/modules/home/repositories/character_repository.dart';
import 'package:marvel_heroes/src/scroll_behavior.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => CustomScrollBehavior()),
        Bind.factory((i) => CharacterRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
