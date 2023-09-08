import 'package:flutter/material.dart';

class Calculation2 extends StatefulWidget {
  const Calculation2({Key? key}) : super(key: key);

  @override
  State<Calculation2> createState() => _Calculation2State();
}

class _Calculation2State extends State<Calculation2> {
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();

  int? sum;
  int? difference;
  int? product;
  double? divide;
  dynamic temp;

  @override
  void initState() {
    no1 = TextEditingController();
    no2 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Basic Maths',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'NO1',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextField(
                    controller: no1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'NO2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextField(
                    controller: no2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        side: const BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          sum = int.parse(no1.text) + int.parse(no2.text);
                          temp = sum;
                        });
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    )),
                SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        side: const BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          difference =
                              int.parse(no1.text) - int.parse(no2.text);
                          temp = difference;
                        });
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    )),
                SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        side: const BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          product = int.parse(no1.text) * int.parse(no2.text);
                          temp = product;
                        });
                      },
                      child: const Text(
                        '*',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      side: const BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        divide = int.parse(no1.text) / int.parse(no2.text);
                        temp = divide;
                      });
                    },
                    child: const Text(
                      '/',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    'Result',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                temp == null
                    ? const Text(
                        "Click for result",
                      )
                    : Text(
                        temp.toString(),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
