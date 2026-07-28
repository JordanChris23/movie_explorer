import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_explorer/widgets/custom_button.dart';


void main(){


testWidgets(
"Le bouton affiche son texte",
(tester) async {


await tester.pumpWidget(

MaterialApp(

home: CustomButton(

text:"Ajouter",

onPressed:(){},

),

),

);



expect(
find.text("Ajouter"),
findsOneWidget
);



});


}