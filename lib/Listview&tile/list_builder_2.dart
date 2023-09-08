import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<String> products = ['book', 'pen', 'pencil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('listview.builder.example'), centerTitle: true),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListTile(
                        title: Text(products[index]),
                        leading: const Icon(Icons.adjust),
                        trailing: const Icon(Icons.done),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
