import 'package:flutter/material.dart';

class ListExample extends StatefulWidget {
  const ListExample({Key? key}) : super(key: key);

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List<String> name = [
    'Alex',
    'John',
    'Peter',
    'David',
    'Sebastiaan',
    'Nancy',
    'Jennifer',
    'Selena',
    'Anna',
    'Scarlett'
  ];
  List<dynamic> age = [22, 23, 35, 32, 24, 26, 32, 19, 27, 28];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Example'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text("Age : ${age[index]}"),
                    leading: const Icon(Icons.adjust),
                    trailing: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Example4(name: name[index])));
                      },
                      child: const Icon(Icons.play_arrow_sharp),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Example4 extends StatefulWidget {
  final String name;

  const Example4({super.key, required this.name});

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Name is'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Employee Name',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 30, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
