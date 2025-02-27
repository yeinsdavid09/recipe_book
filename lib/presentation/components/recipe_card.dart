import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String author;
  final String description;
  final Image image;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const RecipeCard({
    super.key,
    required this.title,
    required this.author,
    required this.description,
    required this.image,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            spacing: 10,
            children: <Widget>[
              SizedBox(
                width: 100,
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image(image: image.image, fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Divider(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        'By $author',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //#endregion
}
