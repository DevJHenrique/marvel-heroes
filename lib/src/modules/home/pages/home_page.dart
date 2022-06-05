import 'package:flutter/material.dart';

import '../repositories/character_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = CharacterRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marvel Heroes'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
