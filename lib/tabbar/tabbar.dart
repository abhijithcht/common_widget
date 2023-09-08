import 'package:flutter/material.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({Key? key}) : super(key: key);

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                ),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(
                  Icons.person_outline,
                ),
                text: 'Status',
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                ),
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Chats'),
            ),
            Center(
              child: Text('Status'),
            ),
            Center(
              child: Text('Calls'),
            ),
          ],
        ),
      ),
    );
  }
}
