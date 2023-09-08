import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
          ),
          child: Drawer(
            child: ListView(
              children: [
                const SizedBox(
                  height: 200,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    accountName: Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 20),
                      child: Text(
                        'Alex James',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    accountEmail: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'alexjames@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/images/doctor1.png'),
                    ),
                    currentAccountPictureSize: Size.square(80),
                  ),
                ),
                ListTile(
                  title: const Text('Profile'),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
