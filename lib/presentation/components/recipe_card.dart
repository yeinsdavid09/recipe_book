import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String author;
  final String description;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const RecipeCard({
    super.key,
    required this.title,
    required this.author,
    required this.description,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              height: 125,
              width: 100,
              child: ClipRRect(borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(width: 10),
            Column(children: <Widget>[Text(title), Text(description)]),
          ],
        ),
      ),
    );
  }

  //#endregion
}
