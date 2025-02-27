import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? label;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const InputForm({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.label,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) return 'This field is required';
      },
    );
  }

  //#endregion
}
