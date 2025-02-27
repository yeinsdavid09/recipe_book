import 'package:flutter/material.dart';

//* Screens
import 'package:recipe_book/presentation/screens/home_screen.dart';
import 'package:recipe_book/presentation/screens/favorites_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

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
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  //#endregion
}
