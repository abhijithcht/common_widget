import 'package:flutter/material.dart';

class ProgressBarCircle1 extends StatefulWidget {
  const ProgressBarCircle1({Key? key}) : super(key: key);

  @override
  State<ProgressBarCircle1> createState() => _ProgressBarCircle1State();
}

class _ProgressBarCircle1State extends State<ProgressBarCircle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: LinearProgressIndicator(
          backgroundColor: Colors.blue,
          valueColor: AlwaysStoppedAnimation(
            Colors.green,
          ),
          minHeight: 12,
        ),
      ),
    );
  }
}
