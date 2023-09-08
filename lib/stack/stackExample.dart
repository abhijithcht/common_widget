import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Stack Example'),
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red),
                height: 400,
                width: 500,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 190, vertical: 20),
                  child: Text(
                    'STACK',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              right: 50,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellow),
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
                top: 170,
                left: 80,
                right: 80,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  height: 100,
                  width: 100,
                )),
            Positioned(
                top: 250,
                left: 140,
                right: 140,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green),
                  height: 100,
                  width: 100,
                ))
          ],
        ));
  }
}
