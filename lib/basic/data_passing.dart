import 'package:flutter/material.dart';

class DataPass extends StatefulWidget {
  const DataPass({Key? key}) : super(key: key);

  @override
  State<DataPass> createState() => _DataPassState();
}

class _DataPassState extends State<DataPass> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: controller,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataPass2(
                      dataPassing: controller.text,
                    ),
                  ),
                );
              },
              child: const Text(
                ("submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataPass2 extends StatefulWidget {
  final dynamic dataPassing;

  const DataPass2({super.key, required this.dataPassing});

  @override
  State<DataPass2> createState() => _DataPass2State();
}

class _DataPass2State extends State<DataPass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "the data is:   ${widget.dataPassing}",
            ),
          ],
        ),
      ),
    );
  }
}
