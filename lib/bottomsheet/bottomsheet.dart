import 'package:flutter/material.dart';

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Container(
                    height: 800,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Bottom Sheet',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Text(
            'Bottom Sheet',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
