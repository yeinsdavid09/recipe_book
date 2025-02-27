import 'package:flutter/material.dart';

//* Components
import 'package:recipe_book/presentation/components/input_form.dart';

class NewRecipeForm extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const NewRecipeForm({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<FormState>();
    final TextEditingController name = TextEditingController();
    final TextEditingController author = TextEditingController();
    final TextEditingController image = TextEditingController();
    final TextEditingController description = TextEditingController();

    return Form(
      key: key,
      child: Column(
        spacing: 10,
        children: [
          InputForm(
            controller: name,
            keyboardType: TextInputType.text,
            label: 'Name',
          ),
          InputForm(
            controller: author,
            keyboardType: TextInputType.name,
            label: 'Author',
          ),
          InputForm(
            controller: image,
            keyboardType: TextInputType.url,
            label: 'Image Url',
          ),
          InputForm(
            controller: description,
            keyboardType: TextInputType.multiline,
            label: 'Description',
          ),
          ElevatedButton(
            onPressed: () {
              if (key.currentState!.validate()) Navigator.pop(context);
            },
            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Create', style: Theme.of(context).textTheme.bodyLarge),
                const Icon(Icons.add_circle_outline_sharp, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //#endregion
}
