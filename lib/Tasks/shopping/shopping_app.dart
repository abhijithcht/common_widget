import 'package:flutter/material.dart';
import 'package:test2/important/maintask.dart';

import 'account.dart';
import 'categories.dart';
import 'home.dart';
import 'notifications.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  int presentIndex = 0;
  final screens = [
    const Home(),
    const Categories(),
    const Notifications(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHOP HERO'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.orangeAccent,
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
                      color: Colors.orangeAccent,
                    ),
                    accountName: Text(
                      'Avatar',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    accountEmail: Text(
                      'avatar@gmail.com',
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
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    currentAccountPictureSize: Size.square(80)),
                ListTile(
                  title: const Text('Edit Profile'),
                  leading: const Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Cards and Wallet'),
                  leading: const Icon(
                    Icons.wallet_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Language'),
                  leading: const Icon(
                    Icons.language_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Help'),
                  leading: const Icon(
                    Icons.help_outline,
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
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Logout'),
                        content: const Text(
                          'Do You Want To Logout?',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainTask(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Logout',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens[presentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 3,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        currentIndex: presentIndex,
        onTap: (index) => setState(
          () => presentIndex = index,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
            ),
            label: 'Categories',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Notifications',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Account',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
