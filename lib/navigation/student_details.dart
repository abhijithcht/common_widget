import 'package:flutter/material.dart';

class StudentPage1 extends StatefulWidget {
  const StudentPage1({Key? key}) : super(key: key);

  @override
  State<StudentPage1> createState() => _StudentPage1State();
}

class _StudentPage1State extends State<StudentPage1> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController mark1 = TextEditingController();
  TextEditingController mark2 = TextEditingController();

  int? sum;

  final TextStyle _style = const TextStyle(
    fontSize: 20,
    color: Colors.black,
  );
  final InputDecoration _decoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  Widget sizeBox() {
    return const SizedBox(
      height: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'STUDENT MARKS',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizeBox(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'NAME',
                    style: _style,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: _decoration,
                    controller: name,
                  ),
                ))
              ],
            ),
            sizeBox(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'AGE',
                    style: _style,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: _decoration,
                    controller: age,
                  ),
                ))
              ],
            ),
            sizeBox(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'MARK 1',
                    style: _style,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: _decoration,
                    controller: mark1,
                  ),
                ))
              ],
            ),
            sizeBox(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'MARK 2',
                    style: _style,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: _decoration,
                    controller: mark2,
                  ),
                ))
              ],
            ),
            sizeBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'TOTAL',
                  style: _style,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      sum = int.parse(mark1.text) + int.parse(mark2.text);
                    });
                  },
                  child: Text(
                    'PRESS FOR TOTAL',
                    style: _style,
                  ),
                ),
                sum == null
                    ? Text(
                        'TOTAL',
                        style: _style,
                      )
                    : Text(
                        sum.toString(),
                      )
              ],
            ),
            sizeBox(),
            Container(
              height: 200,
              width: 220,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/school.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            sizeBox(),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  sum != null
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudentPage2(
                              name: name.text,
                              age: age.text,
                              mark1: mark1.text,
                              mark2: mark2.text,
                              sum: sum.toString(),
                            ),
                          ),
                        )
                      : null;
                },
                child: Text(
                  'SUBMIT',
                  style: _style,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentPage2 extends StatefulWidget {
  final dynamic name;
  final dynamic age;
  final dynamic mark1;
  final dynamic mark2;
  final dynamic sum;

  const StudentPage2(
      {super.key,
      required this.name,
      required this.age,
      required this.mark1,
      required this.mark2,
      required this.sum});

  @override
  State<StudentPage2> createState() => _StudentPage2State();
}

class _StudentPage2State extends State<StudentPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Results',
            style: TextStyle(fontSize: 25, color: Colors.black)),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Name',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text('${widget.name}',
                    style: const TextStyle(fontSize: 20, color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Age',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${widget.age}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Mark1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${widget.mark1}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Mark2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${widget.mark2}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.sum.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Your Grade is :',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                int.parse(widget.sum.toString()) >= 60
                    ? const Text(
                        'A',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      )
                    : const Text(
                        'B',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/school.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
