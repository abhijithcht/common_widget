import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  const Radio1({Key? key}) : super(key: key);

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Please let us know your Gender',
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Male',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(
                  () {
                    selectedGender = value!;
                  },
                );
              },
            ),
            title: const Text(
              'Male',
            ),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Female',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(
                  () {
                    selectedGender = value!;
                  },
                );
              },
            ),
            title: const Text(
              'Female',
            ),
          ),
          Text(
            selectedGender == 'Male' ? 'Hello Gentleman' : 'Hi Lady',
          ),
        ],
      ),
    );
  }
}
