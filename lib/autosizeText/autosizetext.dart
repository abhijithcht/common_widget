import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSize1 extends StatefulWidget {
  const AutoSize1({Key? key}) : super(key: key);

  @override
  State<AutoSize1> createState() => _AutoSize1State();
}

class _AutoSize1State extends State<AutoSize1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: AutoSizeText(
          'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.',
          style: TextStyle(
            fontFamily: "Amaranth",
            fontSize: 30,
          ),
          maxLines: 7,
        ),
      ),
    );
  }
}
