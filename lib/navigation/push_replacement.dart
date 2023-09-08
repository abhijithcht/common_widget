import 'package:flutter/material.dart';

class PushReplacement1 extends StatefulWidget {
  const PushReplacement1({Key? key}) : super(key: key);

  @override
  State<PushReplacement1> createState() => _PushReplacement1State();
}

class _PushReplacement1State extends State<PushReplacement1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Replacement',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const PushReplacement2(),
              ),
            );
          },
          child: const Text('First Page'),
        ),
      ),
    );
  }
}

class PushReplacement2 extends StatefulWidget {
  const PushReplacement2({Key? key}) : super(key: key);

  @override
  State<PushReplacement2> createState() => _PushReplacement2State();
}

class _PushReplacement2State extends State<PushReplacement2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Push Replacement',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PushReplacement1(),
                ),
              );
            },
            child: const Text('Second Page'),
          ),
        ));
  }
}
