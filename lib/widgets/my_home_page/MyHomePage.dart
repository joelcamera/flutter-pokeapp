import 'package:flutter/material.dart';

import '../poke_appbar/PokeAppbar.dart';
import '../poke_body/PokeBody.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PokeAppBar(),
      body: PokeBody(),
    );
  }
}
