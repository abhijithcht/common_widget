import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test2/Tasks/shopping/shopping_app.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  TextEditingController selectDate = TextEditingController();
  String? newdate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  const SizedBox(
                                    height: 500,
                                    width: double.maxFinite,
                                    child: Center(
                                      child: Text(
                                        'No New Notifications',
                                        style: TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close_rounded,
                                        size: 30,
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: const Text(
                  'No Notifications',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Shopping(),
                  ),
                );
              },
              child: const Text(
                'Continue to Home',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 50,
              ),
              child: TextField(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(
                      () {
                        selectDate.text =
                            DateFormat('yyyy/MM/dd').format(pickedDate);
                      },
                    );
                  }
                },
                controller: selectDate,
                decoration: const InputDecoration(
                  enabled: true,
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  labelText: 'Pick date',
                  hintText: 'Select Your Date',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.none,
                showCursor: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
