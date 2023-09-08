import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, position) {
            return Card(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                position.toString(),
                style: const TextStyle(fontSize: 22),
              ),
            ));
          }),
    );
  }
}
