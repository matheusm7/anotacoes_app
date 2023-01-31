import "package:flutter/material.dart";
import 'package:to_do_app/util/my_button_.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 145, 162, 184), // ignore: sized_box_for_whitespace
      content: SizedBox(
        height: 120,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user imput
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicionar uma nova tarefa",
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyButton(text: "Salvar", onPressed: onSave),

              const SizedBox(
                width: 8,
              ),

              //cancel button
              MyButton(text: "Cancelar", onPressed: onCancel),
            ],
          ),
          // buttons -> save + cancel
        ]),
      ),
    );
  }
}
