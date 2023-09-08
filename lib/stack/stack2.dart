import 'package:flutter/material.dart';

class Stack2 extends StatefulWidget {
  const Stack2({Key? key}) : super(key: key);

  @override
  State<Stack2> createState() => _Stack2State();
}

class _Stack2State extends State<Stack2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Stack Design'),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.blue,
              ),
              width: 484,
              height: 480,
            ),
          ),
          Positioned(
            top: 150,
            right: 130,
            left: 130,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(30),
                color: Colors.purple,
                image: const DecorationImage(
                    image: AssetImage('assets/images/hospital.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
            top: 480,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.green,
              ),
              width: 484,
              height: 480,
              child: const Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      Text(
                        'Phone Number :',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '6282566405',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.mail,
                        size: 30,
                      ),
                      Text(
                        'Email ID :',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'abc@gmail.com',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                height: 100,
                width: 150,
                child: const Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
