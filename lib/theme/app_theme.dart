import 'package:flutter/material.dart';


class AppTheme {


static final light = ThemeData(

brightness: Brightness.light,

colorSchemeSeed: Colors.blue,


cardTheme: const CardThemeData(

elevation: 4,

margin: EdgeInsets.all(8),

),


appBarTheme: const AppBarTheme(

centerTitle:true,

),


);



static final dark = ThemeData(


brightness: Brightness.dark,

colorSchemeSeed: Colors.blue,


cardTheme: const CardThemeData(

elevation:4,

margin: EdgeInsets.all(8),

),



appBarTheme: const AppBarTheme(

centerTitle:true,

),


);



}