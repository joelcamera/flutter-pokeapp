import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.nombre,
    required this.color,
    required this.assetImageSource,
  });

  final String nombre;
  final Color color;
  final String assetImageSource;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final textStyle = theme.textTheme.titleSmall!
        .copyWith(color: Colors.black, fontWeight: FontWeight.w800);

    // si estoy usando un solo param usar DecoratedBox, sino Container, ya que Container no es const
    return Card(
      elevation: 3.0,
      color: color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("$nombre: ", style: textStyle),
              Image.asset(assetImageSource, width: 150, height: 150),
            ],
          ),
        ),
      ),
    );
  }
}