import 'package:flutter/material.dart';
import 'package:rendosland/components/my_drawer.dart';
import 'package:rendosland/pages/favourite.dart';
import 'package:rendosland/pages/open_new.dart';
import 'package:rendosland/pages/personal.dart';
import 'package:rendosland/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List _pages = [
    Firstpage(),
    PersonPage(),
    FavouritePage(),
    SettingsPage()
  ];

  void _NavigatBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.monetization_on_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: BottomNavigationBar(
          onTap: _NavigatBottomBar,
          backgroundColor: Theme.of(context).colorScheme.primary,
          fixedColor: Theme.of(context).colorScheme.primary,
          enableFeedback: false,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
