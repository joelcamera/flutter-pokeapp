import 'package:flutter/material.dart';

import 'PokemonCard.dart';

class PokeBody extends StatelessWidget {
  const PokeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 10.0),
      children: const [
        PokemonCard(nombre: "Bulbasaur", color: Colors.green, assetImageSource: "assets/bulbasaur.png"),
        PokemonCard(nombre: "Charmander", color: Colors.deepOrange, assetImageSource: "assets/charmander.png"),
        PokemonCard(nombre: "Squirtle", color: Colors.lightBlueAccent, assetImageSource: "assets/squirtle.png"),
        PokemonCard(nombre: "Pikachu", color: Colors.yellow, assetImageSource: "assets/pikachu.png"),
      ],
    );
  }
}
