// import 'dart:js';

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void openNewExpenseBox() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('vibes'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNewExpenseBox,
        child: Icon(Icons.add),
      ),
    );
  }
}
