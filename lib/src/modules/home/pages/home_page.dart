import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/src/modules/theme/gradients_colors.dart';
import 'package:marvel_heroes/src/modules/theme/text_style_theme.dart';
import '../../theme/theme_colors.dart';
import '../home_store.dart';
import '../widgets/character_type_icon.dart';
import '../widgets/characters_listview.dart';
import '../widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = Modular.get<HomeStore>();

  @override
  void initState() {
    store.loadHomeCharacters();
    store.loadHomeCharactersByType('heroes');
    store.loadHomeCharactersByType('villains');
    store.loadHomeCharactersByType('antiHeroes');
    store.loadHomeCharactersByType('aliens');
    store.loadHomeCharactersByType('humans');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorSilver,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Bem-vindo ao Marvel Heroes',
                    style: kHomeSubtitle.copyWith(
                      color: kColorGrey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Escolha o seu personagem',
                    style: kHomeTitle.copyWith(
                      color: kColorDark,
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CharacterTypeIcon(
                    icon: SvgPicture.asset(
                      'assets/icons/hero.svg',
                      color: Colors.white,
                    ),
                    gradient: kGradientBlue,
                  ),
                  CharacterTypeIcon(
                    icon: SvgPicture.asset(
                      'assets/icons/villain.svg',
                      color: Colors.white,
                    ),
                    gradient: kGradientRed,
                  ),
                  CharacterTypeIcon(
                    icon: SvgPicture.asset(
                      'assets/icons/antihero.svg',
                      color: Colors.white,
                    ),
                    gradient: kGradientPurple,
                  ),
                  CharacterTypeIcon(
                    icon: SvgPicture.asset(
                      'assets/icons/alien.svg',
                      color: Colors.white,
                    ),
                    gradient: kGradientGreen,
                  ),
                  CharacterTypeIcon(
                    icon: SvgPicture.asset(
                      'assets/icons/human.svg',
                      color: Colors.white,
                    ),
                    gradient: kGradientPink,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Heróis',
                          style: kSectionTitle.copyWith(color: kColorRed)),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Ver tudo',
                          style: kHomeSubtitle.copyWith(color: kColorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (context) {
                  if (store.heroesList == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (store.heroesList!.isNotEmpty) {
                    return CharacterListView(
                      characters: store.heroesList,
                    );
                  } else {
                    return const Center(child: Text('Nenhum herói encontrado'));
                  }
                })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Vilões',
                          style: kSectionTitle.copyWith(color: kColorRed)),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Ver tudo',
                          style: kHomeSubtitle.copyWith(color: kColorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (context) {
                  if (store.villainsList == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (store.villainsList!.isNotEmpty) {
                    return CharacterListView(
                      characters: store.villainsList,
                    );
                  } else {
                    return const Center(child: Text('Nenhum vilão encontrado'));
                  }
                })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Anti-heróis',
                          style: kSectionTitle.copyWith(color: kColorRed)),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Ver tudo',
                          style: kHomeSubtitle.copyWith(color: kColorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (context) {
                  if (store.antiHeroesList == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (store.antiHeroesList!.isNotEmpty) {
                    return CharacterListView(
                      characters: store.antiHeroesList,
                    );
                  } else {
                    return const Center(
                        child: Text('Nenhum anti-herói encontrado'));
                  }
                })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Alienígenas',
                          style: kSectionTitle.copyWith(color: kColorRed)),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Ver tudo',
                          style: kHomeSubtitle.copyWith(color: kColorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (context) {
                  if (store.aliensList == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (store.aliensList!.isNotEmpty) {
                    return CharacterListView(
                      characters: store.aliensList,
                    );
                  } else {
                    return const Center(
                        child: Text('Nenhum alienígena encontrado'));
                  }
                })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Humanos',
                          style: kSectionTitle.copyWith(color: kColorRed)),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Ver tudo',
                          style: kHomeSubtitle.copyWith(color: kColorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                Observer(builder: (context) {
                  if (store.humansList == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (store.humansList!.isNotEmpty) {
                    return CharacterListView(
                      characters: store.humansList,
                    );
                  } else {
                    return const Center(
                        child: Text('Nenhum humano encontrado'));
                  }
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
