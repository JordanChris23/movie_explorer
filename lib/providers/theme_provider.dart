import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier{

bool darkMode=false;


ThemeMode get themeMode =>
darkMode ? ThemeMode.dark : ThemeMode.light;


void toggleTheme(){

darkMode=!darkMode;

notifyListeners();

}

}