import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldButton extends StatefulWidget {
  const TextFieldButton({Key? key}) : super(key: key);

  @override
  State<TextFieldButton> createState() => _TextFieldButtonState();
}

class _TextFieldButtonState extends State<TextFieldButton> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      //  borderSide: BorderSide(width: 2,color: Colors.black),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(name.text);
                    }
                  },
                  child: const Text("Submit your answer")),
            ],
          ),
        ));
  }
}
