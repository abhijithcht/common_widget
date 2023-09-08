import 'package:flutter/material.dart';

import 'page1.dart';

class AlertDialog2 extends StatefulWidget {
  final dynamic name;
  final dynamic age;

  const AlertDialog2({super.key, required this.name, required this.age});

  @override
  State<AlertDialog2> createState() => _AlertDialog2State();
}

class _AlertDialog2State extends State<AlertDialog2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Display',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertDialogPage1(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Text(
                  '${widget.name}',
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Age',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Text(
                  '${widget.age}',
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
