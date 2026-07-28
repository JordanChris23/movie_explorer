import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:movie_explorer/main.dart';



void main(){


 testWidgets(
 "Movie Explorer démarre",
 (WidgetTester tester) async {


  await tester.pumpWidget(

    const MyApp(),

  );



  expect(

    find.byType(MaterialApp),

    findsOneWidget,

  );


 });


}