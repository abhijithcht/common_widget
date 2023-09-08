import 'package:flutter/material.dart';

class ListTile1 extends StatefulWidget {
  const ListTile1({Key? key}) : super(key: key);

  @override
  State<ListTile1> createState() => _ListTile1State();
}

class _ListTile1State extends State<ListTile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              title: const Text('Hello'),
              trailing: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              subtitle: const Text('This is subtitle'),
              tileColor: Colors.orangeAccent,
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
