import 'package:flutter/material.dart';

class AlertDialog1 extends StatefulWidget {
  const AlertDialog1({Key? key}) : super(key: key);

  @override
  State<AlertDialog1> createState() => _AlertDialog1State();
}

class _AlertDialog1State extends State<AlertDialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alert Dialog',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 80,
          width: 250,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              side: const BorderSide(color: Colors.black, width: 3),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Important Alert'),
                  content: const Text(
                    'You have raised an Alert Dialog box',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'I Understood',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            child: const Text(
              'Alert Dialog',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
