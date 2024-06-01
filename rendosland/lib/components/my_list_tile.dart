import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String textName;
  final String subtext;
  final String ImagePath;
  final void Function()? onPressed;
  const MyListTile(
      {super.key,
      required this.subtext,
      required this.textName,
      required this.ImagePath,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(ImagePath),
      title: Text(textName),
      subtitle: Text(subtext),
      trailing:
          (IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward))),
    );
  }
}
