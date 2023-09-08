import 'package:flutter/material.dart';

class ClipRect1 extends StatefulWidget {
  const ClipRect1({Key? key}) : super(key: key);

  @override
  State<ClipRect1> createState() => _ClipRect1State();
}

class _ClipRect1State extends State<ClipRect1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.5,
            child: Image(
                image: AssetImage(
              'assets/images/Internet_20230628_162034_49.jpeg',
            )),
          ),
        ),
      ),
    );
  }
}
