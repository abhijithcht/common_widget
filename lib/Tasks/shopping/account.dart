import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 100,
            child: Image.asset(
              'assets/images/avatar.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Avatar',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'This is the latest Version Available',
                );
              },
              child: const Text(
                "Version 1.0.0",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
