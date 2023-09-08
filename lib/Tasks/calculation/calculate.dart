import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();

  int? sum;
  int? difference;
  int? product;
  double? divide;

  @override
  void initState() {
    // TODO: implement initState
    no1 = TextEditingController();
    no2 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Arithmetic Operations"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "NO 1 :",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextField(
                      controller: no1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black))),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "NO 2 :",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextField(
                      controller: no2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: const BorderSide(width: 3, color: Colors.black),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      setState(() {
                        sum = int.parse(no1.text) + int.parse(no2.text);
                      });
                    },
                    child: const Text('Add'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: const BorderSide(color: Colors.black, width: 3),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      setState(() {
                        difference = int.parse(no1.text) - int.parse(no2.text);
                      });
                    },
                    child: const Text('Subtract'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 3,
                        side: const BorderSide(color: Colors.black, width: 3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      setState(() {
                        product = int.parse(no1.text) * int.parse(no2.text);
                      });
                    },
                    child: const Text('Product'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        side: const BorderSide(color: Colors.black, width: 3)),
                    onPressed: () {
                      setState(() {
                        divide = int.parse(no1.text) / int.parse(no2.text);
                      });
                    },
                    child: const Text('Division'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Sum',
                        style: TextStyle(fontSize: 30, color: Colors.black))),
                sum == null
                    ? const Text(
                        "Press the key for values",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )
                    : Text(sum.toString(),
                        style: const TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Difference',
                        style: TextStyle(fontSize: 30, color: Colors.black))),
                difference == null
                    ? const Text(
                        'Press the key for values',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )
                    : Text(difference.toString(),
                        style: const TextStyle(fontSize: 20))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Product',
                        style: TextStyle(fontSize: 30, color: Colors.black))),
                product == null
                    ? const Text(
                        'Press the key for values',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )
                    : Text(product.toString(),
                        style: const TextStyle(fontSize: 20))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Divide',
                        style: TextStyle(fontSize: 30, color: Colors.black))),
                divide == null
                    ? const Text(
                        'Press the key for values',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )
                    : Text(divide.toString(),
                        style: const TextStyle(fontSize: 20)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
