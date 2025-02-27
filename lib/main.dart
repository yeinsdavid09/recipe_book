import 'package:flutter/material.dart';

//* Screens
import 'package:recipe_book/presentation/screens/home_screen.dart';
import 'package:recipe_book/presentation/screens/favorites_screen.dart';

//* Components
import 'package:recipe_book/presentation/components/new_recipe_form.dart';
import 'package:recipe_book/presentation/overlays/modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  Future<void> _showModal(BuildContext context, Widget widget) {
    return showModalBottomSheet(
      context: context,
      builder:
          (builder) => Modal(widget: widget, onConfirm: () {}, onCancel: () {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Recipe Book'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled), text: 'Home'),
                Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.all(10),
            child: TabBarView(children: [HomeScreen(), FavoritesScreen()]),
          ),
          floatingActionButton: Builder(
            builder:
                (context) => FloatingActionButton(
                  onPressed: () {
                    _showModal(
                      context,
                      Column(
                        spacing: 10,
                        children: [
                          Text(
                            'Create a new recipe',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const NewRecipeForm(),
                        ],
                      ),
                    );
                  },
                  tooltip: 'Add Recipe',
                  child: const Icon(Icons.add),
                ),
          ),
        ),
      ),
    );
  }

  //#endregion
}
