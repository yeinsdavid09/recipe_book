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
    return Scaffold(
      body: Column(
        spacing: 8,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: RecipeCard(
              title: 'Lasagna',
              author: 'Pepito Perez',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis, leo ac ultrices tristique, purus arcu tempor lacus, quis vehicula elit risus vel tellus. Proin feugiat iaculis massa, id sagittis.',
              image: Image.network(
                'https://static.platzi.com/media/uploads/flutter_lasana_b894f1aee1.jpg',
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: RecipeCard(
              title: 'Spaguetti',
              author: 'Pepito Perez',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis, leo ac ultrices tristique, purus arcu tempor lacus, quis vehicula elit risus vel tellus. Proin feugiat iaculis massa, id sagittis.',
              image: Image.network(
                'https://static.platzi.com/media/uploads/flutter_lasana_b894f1aee1.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }

  //#endregion
}
