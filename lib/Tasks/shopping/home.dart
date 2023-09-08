import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/Internet_20230628_162034_50.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_8.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_2.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_46.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_3.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_7.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_6.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_4.jpeg',
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'assets/images/Internet_20230628_162034_10.jpeg',
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
