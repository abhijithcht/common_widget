import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  final dynamic passingdata;

  const DoctorDetails({super.key, required this.passingdata});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        title: const Text('DOCTOR DETAILS'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('DOCTOR : ',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  Text(widget.passingdata.DoctorName,
                      style: const TextStyle(fontSize: 30, color: Colors.blue))
                ],
              ),
              const SizedBox(height: 30),
              // Container(
              //   height: 210,
              //   width: 300,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage('assets/images/hospital.png')),
              //       borderRadius: BorderRadius.circular(30),
              //       border: Border.all(color: Colors.black, width: 3)),
              // ),
              CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: Colors.black,
                  child: Image.asset(widget.passingdata.avatar)),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Text(
                  'Our Hospital has been NABL accredited since 2008 and Provides Best Medical care in the Industry.',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
