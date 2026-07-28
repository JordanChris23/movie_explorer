import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/theme_provider.dart';
import 'theme/app_theme.dart';
import 'router/app_router.dart';



void main(){

runApp(

ChangeNotifierProvider(

create: (_) => ThemeProvider(),

child: const MyApp(),

),

);

}



class MyApp extends StatelessWidget{

const MyApp({super.key});


@override
Widget build(BuildContext context){


final themeProvider =
Provider.of<ThemeProvider>(context);



return MaterialApp.router(

debugShowCheckedModeBanner:false,


theme: AppTheme.light,

darkTheme: AppTheme.dark,


themeMode:
themeProvider.themeMode,


routerConfig:
AppRouter.router,


);

}


}