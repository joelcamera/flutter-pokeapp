import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/theme_mode/ThemeModeWidget.dart';

class PokeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PokeAppBar({ super.key }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<StatefulWidget> createState() => _PokeAppBarState();
}

class _PokeAppBarState extends State<PokeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text("Pokemon App!"),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            ThemeModeWidget.of(context).onThemeModeChange();
          },
          icon: const Icon(Icons.sunny),
          tooltip: "Presionar para utilizar el modo oscuro",
        )
      ],
    );
  }
}