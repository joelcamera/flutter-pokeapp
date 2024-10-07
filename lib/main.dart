import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/my_home_page/MyHomePage.dart';

import 'widgets/theme_mode/ThemeModeWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeMode _themeMode = ThemeMode.light;

  void onThemeModeChange() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeModeWidget(
      onThemeModeChange: onThemeModeChange,
      themeMode: _themeMode,
      child: MaterialApp(
        title: 'PokeApp!',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.blue,
            titleTextStyle: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.black38,
            titleTextStyle: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
          ),
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
        ),
        themeMode: _themeMode,
        home: const MyHomePage(),
      ),
    );
  }
}
