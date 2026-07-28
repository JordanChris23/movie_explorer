import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier {


  ThemeMode _themeMode = ThemeMode.system;


  ThemeMode get themeMode => _themeMode;



  void toggleTheme(bool dark){


    _themeMode =
        dark
        ? ThemeMode.dark
        : ThemeMode.light;


    notifyListeners();

  }

}