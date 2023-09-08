import 'package:flutter/material.dart';

class Radio2 extends StatefulWidget {
  const Radio2({Key? key}) : super(key: key);

  @override
  State<Radio2> createState() => _Radio2State();
}

class _Radio2State extends State<Radio2> {
  double? result;

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
            '1+2+4 = result, so what is result?',
          ),
          ListTile(
            leading: Radio<double>(
              value: 4,
              groupValue: result,
              onChanged: (value) {
                setState(() {
                  result = value!;
                });
              },
            ),
            title: const Text(
              '4',
            ),
          ),
          ListTile(
            leading: Radio<double>(
              value: 5.4,
              groupValue: result,
              onChanged: (value) {
                setState(() {
                  result = value!;
                });
              },
            ),
            title: const Text(
              '5.4',
            ),
          ),
          ListTile(
            leading: Radio<double>(
              value: 6,
              groupValue: result,
              onChanged: (value) {
                setState(() {
                  result = value!;
                });
              },
            ),
            title: const Text(
              '6',
            ),
          ),
          ListTile(
            leading: Radio<double>(
              value: 7,
              groupValue: result,
              onChanged: (value) {
                setState(() {
                  result = value!;
                });
              },
            ),
            title: const Text(
              '7',
            ),
          ),
          Text(
            result == 7
                ? 'Correct Answer'
                : result == null
                    ? ''
                    : 'Wrong Answer!',
            style: TextStyle(
              color: result == 7
                  ? Colors.green
                  : result == null
                      ? Colors.transparent
                      : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
