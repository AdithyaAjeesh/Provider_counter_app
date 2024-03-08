import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  void toggleTheme() {
    final darktheme = _theme = ThemeData.dark();
    final lighttheme = _theme = ThemeData.light();
    if (_theme == darktheme) {
      _theme = ThemeData.light();
    } else if (_theme == lighttheme) {
      _theme = ThemeData.dark();
    }
  }
}
