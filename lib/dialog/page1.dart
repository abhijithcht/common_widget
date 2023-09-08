import 'package:flutter/material.dart';
import 'page2.dart';

class AlertDialogPage1 extends StatefulWidget {
  const AlertDialogPage1({Key? key}) : super(key: key);

  @override
  State<AlertDialogPage1> createState() => _AlertDialogPage1State();
}

class _AlertDialogPage1State extends State<AlertDialogPage1> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Collection',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              side: const BorderSide(color: Colors.black, width: 3),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Send Your Request'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              keyboardType: TextInputType.text,
                              controller: name,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration.collapsed(
                                  hintText: 'Name'),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: age,
                              decoration: const InputDecoration.collapsed(
                                  hintText: 'Age'),
                            )
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'CANCEL',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                name.text == '' || age.text == ''
                                    ? const SnackBar(
                                        backgroundColor: Colors.black87,
                                        content: Text(
                                            "Name and Age should not be empty!"),
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 5,
                                        duration: Duration(seconds: 3),
                                      )
                                    : Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AlertDialog2(
                                            name: name.text,
                                            age: age.text,
                                          ),
                                        ),
                                      );
                              });
                            },
                            child: const Text(
                              'SUBMIT',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ],
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ));
            },
            child: const Text(
              'Submit Details',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
