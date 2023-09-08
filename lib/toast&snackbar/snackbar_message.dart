import 'package:flutter/material.dart';

class SnackBarMsg extends StatefulWidget {
  const SnackBarMsg({Key? key}) : super(key: key);

  @override
  State<SnackBarMsg> createState() => _SnackBarMsgState();
}

class _SnackBarMsgState extends State<SnackBarMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              var snackBar = const SnackBar(content: Text('Hello, I am here'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              'Show SnackBar Message',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ));
  }
}
