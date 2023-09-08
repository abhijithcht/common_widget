import 'package:flutter/material.dart';

class ProgressBarLine1 extends StatefulWidget {
  const ProgressBarLine1({Key? key}) : super(key: key);

  @override
  State<ProgressBarLine1> createState() => _ProgressBarLine1State();
}

class _ProgressBarLine1State extends State<ProgressBarLine1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          valueColor: AlwaysStoppedAnimation(
            Colors.green,
          ),
          strokeWidth: 10,
        ),
      ),
    );
  }
}
