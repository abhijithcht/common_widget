import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast extends StatefulWidget {
  const ShowToast({Key? key}) : super(key: key);

  @override
  State<ShowToast> createState() => _ShowToastState();
}

class _ShowToastState extends State<ShowToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Toast  Message"),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "This is a Toast Message",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.redAccent,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          child: const Text(
            'Show Toast Message',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
