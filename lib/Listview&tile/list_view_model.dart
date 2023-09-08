import 'package:flutter/material.dart';

class User {
  final String username;
  final String email;
  final String urlavatar;

  User({
    required this.username,
    required this.email,
    required this.urlavatar,
  });
}

class ModelList extends StatefulWidget {
  const ModelList({Key? key}) : super(key: key);

  @override
  State<ModelList> createState() => _ModelListState();
}

class _ModelListState extends State<ModelList> {
  List<dynamic> users = [
    User(
        username: 'Alex',
        email: 'abc@gmail.com',
        urlavatar: 'assets/images/school.png'),
    User(
        username: 'John',
        email: 'ccc@gmail.com',
        urlavatar: 'assets/images/school.png'),
    User(
        username: 'David',
        email: 'olop@gmail.com',
        urlavatar: 'assets/images/school.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    passingdata: users[index],
                  ),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(user.urlavatar),
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final dynamic passingdata;

  const DetailPage({super.key, required this.passingdata});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Text(
                widget.passingdata.username,
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
              Text(
                widget.passingdata.email,
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
