import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formatDate = DateFormat.yMMMd().format(_currentDate);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date Picker',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      body: Row(
        children: [
          IconButton(
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: _currentDate,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
              );
              if (pickedDate != null) {
                setState(
                  () {
                    _currentDate = pickedDate;
                  },
                );
              }
            },
            icon: const Icon(
              Icons.date_range_rounded,
              color: Colors.black,
              size: 100,
            ),
            iconSize: 100,
          ),
          Expanded(
            child: Text('Date: $formatDate'),
          ),
        ],
      ),
    );
  }
}
