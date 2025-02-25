import 'package:flutter/material.dart';

//* Components
import 'package:recipe_book/presentation/components/recipe_card.dart';

class HomeScreen extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const HomeScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          RecipeCard(
            title: 'Lasagna',
            author: 'Pepito Perez',
            description: 'Lorem ipsum dolor sit amet',
          ),
          RecipeCard(
            title: 'Spaguetti',
            author: 'Pepito Perez',
            description: 'Lorem ipsum dolor sit amet',
          ),
        ],
      ),
    );
  }

  //#endregion
}
