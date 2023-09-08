import 'package:flutter/material.dart';

class Opacity1 extends StatefulWidget {
  const Opacity1({Key? key}) : super(key: key);

  @override
  State<Opacity1> createState() => _Opacity1State();
}

class _Opacity1State extends State<Opacity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Opacity(
              opacity: 0.5,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'OPACITY',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
