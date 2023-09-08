import 'package:flutter/material.dart';

class SimpleDialog1 extends StatefulWidget {
  const SimpleDialog1({Key? key}) : super(key: key);

  @override
  State<SimpleDialog1> createState() => _SimpleDialog1State();
}

class _SimpleDialog1State extends State<SimpleDialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Dialog'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 170,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                foregroundColor: Colors.black),
            child: const Text(
              'Simple Dialog',
              style: TextStyle(fontSize: 22),
            ),
            onPressed: () => showDialog(
                context: context,
                builder: (_) {
                  return SimpleDialog(
                    title: const Text(
                      'The Title',
                      style: TextStyle(fontSize: 24),
                    ),
                    children: [
                      SimpleDialogOption(
                        child: const Text(
                          'Option1',
                          style: TextStyle(fontSize: 22),
                        ),
                        onPressed: () {
                          debugPrint('You Have Selected Option1');
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text(
                          'Option2',
                          style: TextStyle(fontSize: 22),
                        ),
                        onPressed: () {
                          debugPrint('You Have Selected Option2');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
