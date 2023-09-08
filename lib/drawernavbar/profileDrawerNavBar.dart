import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  const BottomNavBar2({Key? key}) : super(key: key);

  @override
  State<BottomNavBar2> createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  int presentIndex = 0;
  final screens = [
    const Home1(),
    const Home2(),
    const Home3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[presentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        currentIndex: presentIndex,
        onTap: (index) => setState(
          () => presentIndex = index,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help,
            ),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  Widget appDrawer() {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
        ),
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  accountName: Text(
                    'Alex',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    'alex@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/doctor5.png'),
                    ),
                  ),
                  currentAccountPictureSize: Size.square(80)),
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
                title: const Text('SignOut'),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      drawer: appDrawer(),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
          ),
          child: Drawer(
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    accountName: Text(
                      'Alex',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    accountEmail: Text(
                      'alex@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/doctor5.png'),
                      ),
                    ),
                    currentAccountPictureSize: Size.square(80)),
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
                  title: const Text('SignOut'),
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

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.black,
      ),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
          ),
          child: Drawer(
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                    ),
                    accountName: Text(
                      'Alex',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    accountEmail: Text(
                      'alex@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/doctor5.png'),
                      ),
                    ),
                    currentAccountPictureSize: Size.square(80)),
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
                  title: const Text('SignOut'),
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
