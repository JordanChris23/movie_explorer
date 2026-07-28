import 'package:flutter/material.dart';


class MovieSearchBar extends StatelessWidget {

  final ValueChanged<String> onChanged;


  const MovieSearchBar({

    super.key,
    required this.onChanged,

  });


  @override
  Widget build(BuildContext context){

    return TextField(

      onChanged: onChanged,

      decoration: InputDecoration(

        hintText: "Rechercher un film",

        prefixIcon:
        const Icon(Icons.search),

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15),

        ),

      ),

    );

  }
}