import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMsg extends StatefulWidget {
  const ToastMsg({Key? key}) : super(key: key);

  @override
  State<ToastMsg> createState() => _ToastMsgState();
}

class _ToastMsgState extends State<ToastMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Message'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: SizedBox(
                height: 100,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.redAccent,
                    elevation: 3,
                    side: const BorderSide(width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'THIS IS THE TOP TOAST',
                      toastLength: Toast.LENGTH_LONG,
                      backgroundColor: Colors.brown,
                      textColor: Colors.white,
                      fontSize: 20,
                      gravity: ToastGravity.TOP,
                    );
                  },
                  child: const Text(
                    'TOP',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120, vertical: 250),
              child: SizedBox(
                height: 100,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.purpleAccent,
                    elevation: 3,
                    side: const BorderSide(width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'THIS IS THE CENTER TOAST',
                      toastLength: Toast.LENGTH_LONG,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 20,
                      gravity: ToastGravity.CENTER,
                    );
                  },
                  child: const Text(
                    'CENTER',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              child: SizedBox(
                height: 100,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.lightGreen,
                    elevation: 3,
                    side: const BorderSide(width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'THIS IS THE BOTTOM TOAST',
                      toastLength: Toast.LENGTH_LONG,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 20,
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                  child: const Text(
                    'BOTTOM',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    // SizedBox(
  }
}
