import 'package:flutter/material.dart';
import 'package:rendosland/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home'),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      drawer: MyDrawer(),
    );
  }
}
