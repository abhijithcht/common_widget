import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatefulWidget {
  const Fonts({Key? key}) : super(key: key);

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Google Fonts',
          style: GoogleFonts.inder(
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
