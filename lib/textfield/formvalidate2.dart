import 'package:flutter/material.dart';

class TextForm2 extends StatefulWidget {
  final dynamic formvalue;

  const TextForm2({super.key, required this.formvalue});

  @override
  State<TextForm2> createState() => _TextForm2State();
}

class _TextForm2State extends State<TextForm2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "The Name is: ${widget.formvalue}",
        ),
      ),
    );
  }
}
