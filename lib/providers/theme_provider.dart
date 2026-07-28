import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  bool _darkMode = false;


  bool get darkMode => _darkMode;


  ThemeMode get themeMode =>
      _darkMode ? ThemeMode.dark : ThemeMode.light;



  void toggleTheme() {

    _darkMode = !_darkMode;

    notifyListeners();

  }

}