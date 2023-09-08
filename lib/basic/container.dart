import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("W E L C O M E"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "HELLO",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: const Center(
                child: Text(
                  "HELLO",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Container(
                height: 200,
                width: 500,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("AAA"),
                Text("BBB"),
                Text("CCC"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
