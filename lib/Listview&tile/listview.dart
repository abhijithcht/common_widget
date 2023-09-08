import 'package:flutter/material.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('List View Circle Avatar'),
          centerTitle: true),
      body: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 50,
            ),
          ),
          Center(
              child: Text(
            'Alex',
            style: TextStyle(fontSize: 50),
          ))
        ],
      ),
    );
  }
}
