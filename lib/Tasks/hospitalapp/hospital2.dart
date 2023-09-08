import 'package:flutter/material.dart';

import 'hospital3.dart';

class HealthModel {
  final String Disease;
  final String DoctorName;
  final String avatar;

  HealthModel(
      {required this.Disease, required this.DoctorName, required this.avatar});
}

class DoctorList1 extends StatefulWidget {
  const DoctorList1({Key? key}) : super(key: key);

  @override
  State<DoctorList1> createState() => _DoctorList1State();
}

class _DoctorList1State extends State<DoctorList1> {
  List<dynamic> hospitalData = [
    HealthModel(
        Disease: 'Cold',
        DoctorName: 'John Thomas',
        avatar: 'assets/images/doctor1.png'),
    HealthModel(
        Disease: 'Cold',
        DoctorName: 'Peter Parker',
        avatar: 'assets/images/doctor2.png'),
    HealthModel(
        Disease: 'Cold',
        DoctorName: 'Felix Helen',
        avatar: 'assets/images/doctor5.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        title: const Text('DOCTORS'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: hospitalData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorDetails(
                    passingdata: hospitalData[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.greenAccent),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(hospitalData[index].avatar),
                    radius: 20,
                  ),
                  title: Text(
                    hospitalData[index].DoctorName,
                    style: const TextStyle(fontSize: 25),
                  ),
                  trailing: const Icon(Icons.play_arrow,
                      color: Colors.black, size: 40),
                  subtitle: Text(hospitalData[index].Disease),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DoctorList2 extends StatefulWidget {
  const DoctorList2({Key? key}) : super(key: key);

  @override
  State<DoctorList2> createState() => _DoctorList2State();
}

class _DoctorList2State extends State<DoctorList2> {
  List<dynamic> hospitaldata = [
    HealthModel(
        Disease: 'Headache',
        DoctorName: 'Hilbert wale',
        avatar: 'assets/images/m1.png'),
    HealthModel(
        Disease: 'Headache',
        DoctorName: 'Nancy William',
        avatar: 'assets/images/m11.png'),
    HealthModel(
        Disease: 'Headache',
        DoctorName: 'Robert Edward',
        avatar: 'assets/images/m12.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('DOCTORS'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: hospitaldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                passingdata: hospitaldata[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(hospitaldata[index].avatar),
                            radius: 20,
                          ),
                          title: Text(hospitaldata[index].DoctorName,
                              style: const TextStyle(fontSize: 25)),
                          trailing: const Icon(Icons.play_arrow,
                              color: Colors.black, size: 40),
                          subtitle: Text(hospitaldata[index].Disease)),
                    ),
                  ));
            }));
  }
}

class DoctorList3 extends StatefulWidget {
  const DoctorList3({Key? key}) : super(key: key);

  @override
  State<DoctorList3> createState() => _DoctorList3State();
}

class _DoctorList3State extends State<DoctorList3> {
  List<dynamic> hospitaldata = [
    HealthModel(
        Disease: 'Asthma',
        DoctorName: 'Lucy Zale',
        avatar: 'assets/images/f7.png'),
    HealthModel(
        Disease: 'Asthma',
        DoctorName: 'Daicy Mathew',
        avatar: 'assets/images/doctor3.png'),
    HealthModel(
        Disease: 'Asthma',
        DoctorName: 'Felicia Gregory',
        avatar: 'assets/images/doctor4.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('DOCTORS'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: hospitaldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                passingdata: hospitaldata[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(hospitaldata[index].avatar),
                            radius: 20,
                          ),
                          title: Text(hospitaldata[index].DoctorName,
                              style: const TextStyle(fontSize: 25)),
                          trailing: const Icon(Icons.play_arrow,
                              color: Colors.black, size: 40),
                          subtitle: Text(hospitaldata[index].Disease)),
                    ),
                  ));
            }));
  }
}

class DoctorList4 extends StatefulWidget {
  const DoctorList4({Key? key}) : super(key: key);

  @override
  State<DoctorList4> createState() => _DoctorList4State();
}

class _DoctorList4State extends State<DoctorList4> {
  List<dynamic> hospitaldata = [
    HealthModel(
        Disease: 'Anemia',
        DoctorName: 'Alice Benjamin',
        avatar: 'assets/images/f8.png'),
    HealthModel(
        Disease: 'Anemia',
        DoctorName: 'William Davis',
        avatar: 'assets/images/doctor5.png'),
    HealthModel(
        Disease: 'Anemia',
        DoctorName: 'Henry Alex',
        avatar: 'assets/images/doctor6.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('DOCTORS'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: hospitaldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                passingdata: hospitaldata[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(hospitaldata[index].avatar),
                            radius: 20,
                          ),
                          title: Text(hospitaldata[index].DoctorName,
                              style: const TextStyle(fontSize: 25)),
                          trailing: const Icon(Icons.play_arrow,
                              color: Colors.black, size: 40),
                          subtitle: Text(hospitaldata[index].Disease)),
                    ),
                  ));
            }));
  }
}

class DoctorList5 extends StatefulWidget {
  const DoctorList5({Key? key}) : super(key: key);

  @override
  State<DoctorList5> createState() => _DoctorList5State();
}

class _DoctorList5State extends State<DoctorList5> {
  List<dynamic> hospitaldata = [
    HealthModel(
        Disease: 'Pneumonia',
        DoctorName: 'Mary Jane',
        avatar: 'assets/images/f9.png'),
    HealthModel(
        Disease: 'Pneumonia',
        DoctorName: 'Taylor Swift',
        avatar: 'assets/images/f10.png'),
    HealthModel(
        Disease: 'Pneumonia',
        DoctorName: 'Selena Gomez',
        avatar: 'assets/images/f4.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('DOCTORS'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: hospitaldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                passingdata: hospitaldata[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(hospitaldata[index].avatar),
                            radius: 20,
                          ),
                          title: Text(hospitaldata[index].DoctorName,
                              style: const TextStyle(fontSize: 25)),
                          trailing: const Icon(Icons.play_arrow,
                              color: Colors.black, size: 40),
                          subtitle: Text(hospitaldata[index].Disease)),
                    ),
                  ));
            }));
  }
}

class DoctorList6 extends StatefulWidget {
  const DoctorList6({Key? key}) : super(key: key);

  @override
  State<DoctorList6> createState() => _DoctorList6State();
}

class _DoctorList6State extends State<DoctorList6> {
  List<dynamic> hospitaldata = [
    HealthModel(
        Disease: 'Heat Stroke',
        DoctorName: 'Queen Heart',
        avatar: 'assets/images/f1.png'),
    HealthModel(
        Disease: 'Heat Stroke',
        DoctorName: 'Seine Sebastian',
        avatar: 'assets/images/f2.png'),
    HealthModel(
        Disease: 'Heat Stroke',
        DoctorName: 'Thomas Gremory',
        avatar: 'assets/images/f3.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          title: const Text('DOCTORS'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: hospitaldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                passingdata: hospitaldata[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(hospitaldata[index].avatar),
                            radius: 20,
                          ),
                          title: Text(hospitaldata[index].DoctorName,
                              style: const TextStyle(fontSize: 25)),
                          trailing: const Icon(Icons.play_arrow,
                              color: Colors.black, size: 40),
                          subtitle: Text(hospitaldata[index].Disease)),
                    ),
                  ));
            }));
  }
}
