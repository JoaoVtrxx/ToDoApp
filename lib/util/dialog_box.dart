import 'package:flutter/material.dart';
import 'package:flutter_todoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Digite Aqui...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Cancelar',
                  onPressed: onCancel,
                ),
                const SizedBox(
                  width: 8,
                ),
                MyButton(
                  text: 'Salvar',
                  onPressed: onSave,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
