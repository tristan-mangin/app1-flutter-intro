// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/pages/home_page.dart';
import 'package:app1/pages/profile_page.dart';
import 'package:app1/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Keep track of selected index
  int _selectedIndex = 0;

  // updates selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List _pages = [
    // Home
    HomePage(),
    // Profile
    ProfilePage(),
    // Settings
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            // Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // Profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            // Settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple,
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //         )
      //       ),
      //       // Home page list tile
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           // pop drawer first
      //           Navigator.pop(context);
      //           // go to home page
      //           Navigator.pushNamed(context, '/homepage');
      //         }
      //       ),
      //       // settings page list tile
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/settingspage');
      //         },
      //       )
      //     ],
      //   )
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Next Page"),
      //     onPressed: () {
      //       Navigator.pushNamed(context, "/secondpage");
      //     },
      //   ),
      // )
    );
  }
}
