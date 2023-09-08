import 'package:flutter/material.dart';

import 'hospital2.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        title: const Text(
          'Hospital',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Select the Disease',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList1()));
                        },
                        child: const Text('Cold',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)))),
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList2()));
                        },
                        child: const Text('Headache',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))))
              ],
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList3()));
                        },
                        child: const Text('Asthma',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)))),
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList4()));
                        },
                        child: const Text('Anemia',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))))
              ],
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList5()));
                        },
                        child: const Text('Pneumonia',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)))),
                SizedBox(
                    height: 70,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            side:
                                const BorderSide(color: Colors.black, width: 3),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorList6()));
                        },
                        child: const Text('Heat Stroke',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
