import 'package:flutter/material.dart';
import 'package:test2/opacity/opacity.dart';

class Grid1 extends StatefulWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  Widget gridWell() {
    return InkWell(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Opacity1(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('G R I D V I E W'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.8 / 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
        children: [
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
          gridWell(),
        ],
      ),
    );
  }
}
