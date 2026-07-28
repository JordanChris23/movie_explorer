import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:movie_explorer/main.dart';
import 'package:movie_explorer/providers/theme_provider.dart';

void main() {

  testWidgets('Application starts', (WidgetTester tester) async {

    await tester.pumpWidget(

      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),

        child: const MyApp(),

      ),

    );


    await tester.pump();


    expect(find.byType(MaterialApp), findsOneWidget);

  });

}