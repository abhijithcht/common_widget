import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  const TestContainer(
      {Key? key,
      this.width = double.infinity,
      this.height = 300,
      required this.label,
      required this.color})
      : super(key: key);

  final double width;
  final double height;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
