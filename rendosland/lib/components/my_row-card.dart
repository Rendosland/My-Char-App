import 'package:flutter/material.dart';

class MyRowCard extends StatelessWidget {
  final String IconImagePath;
  final String buttonText;
  MyRowCard({super.key, required this.IconImagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 0,
                )
              ]),
          child: Image.asset(IconImagePath),
        ),
        Text(
          buttonText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )
      ],
    );
  }
}
