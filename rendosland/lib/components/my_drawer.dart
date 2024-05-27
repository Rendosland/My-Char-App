import 'package:flutter/material.dart';
import 'package:rendosland/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.message,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ListTile(
                  title: Text('H O M E'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ListTile(
                  title: Text('S E T T I N G S'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
            child: ListTile(
              title: Text('L O G O U T'),
              leading: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}
