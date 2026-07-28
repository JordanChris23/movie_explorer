import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:movie_explorer/widgets/custom_button.dart';


void main(){

testWidgets(
"CustomButton affiche le texte",
(WidgetTester tester) async {


await tester.pumpWidget(

MaterialApp(

home: Scaffold(

body: CustomButton(

text:"Tester",

onPressed:(){},

),

),

),

);


expect(
find.text("Tester"),
findsOneWidget
);


});


}