import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [

          // Image de fond
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba',
              fit: BoxFit.cover,
            ),
          ),

          // Filtre sombre
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Contenu
          Center(
            child: Padding(
              padding: EdgeInsets.all(width > 600 ? 80 : 30),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  const Text(
                    'Movie Explorer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Découvrez vos films préférés',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 40),


                  CustomButton(
                    text: 'Voir les films',
                    onPressed: () {
                      context.go('/movies');
                    },
                  ),

                  const SizedBox(height: 20),


                  CustomButton(
                    text: 'Ajouter un film',
                    onPressed: () {
                      context.go('/add');
                    },
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}