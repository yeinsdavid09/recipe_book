import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final Widget widget;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const Modal({
    super.key,
    required this.widget,
    required this.onConfirm,
    required this.onCancel,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.25,
      child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(10), child: widget),
      ),
    );
  }

  //#endregion
}
