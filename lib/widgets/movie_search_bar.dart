import 'package:flutter/material.dart';


class MovieSearchBar extends StatelessWidget{

final Function(String) onChanged;


const MovieSearchBar({
super.key,
required this.onChanged
});


@override
Widget build(BuildContext context){

return TextField(

decoration: const InputDecoration(

hintText:"Rechercher un film",

prefixIcon:Icon(Icons.search),

border:OutlineInputBorder(),

),

onChanged:onChanged,

);

}

}