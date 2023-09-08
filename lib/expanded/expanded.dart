import 'package:flutter/material.dart';

class Expanded1 extends StatefulWidget {
  const Expanded1({Key? key}) : super(key: key);

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              width: 200,
              height: 200,
            ),
            Expanded(
              child: Container(
                color: Colors.purpleAccent,
                width: 200,
              ),
            ),
            Container(
              color: Colors.greenAccent,
              width: 200,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
