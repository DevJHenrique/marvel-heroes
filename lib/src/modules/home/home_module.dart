import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes/src/modules/home/repositories/character_repository.dart';

import 'home_store.dart';
import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore(i.get<CharacterRepository>())),
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
