import 'package:flutter/material.dart';

class ThemeModeWidget extends InheritedWidget {
  const ThemeModeWidget({required this.onThemeModeChange, this.themeMode = ThemeMode.light, required super.child, super.key});

  final ThemeMode themeMode;
  final Function onThemeModeChange;

  static ThemeModeWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeModeWidget>()!;
  }

  @override
  bool updateShouldNotify(ThemeModeWidget oldWidget) {
    return oldWidget.themeMode != themeMode;
  }
}