import 'package:flutter/material.dart';

import 'my_card.dart';

class MyScroll extends StatelessWidget {
  const MyScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: PageView(
        children: [
          MyCard(
              balance: 548473,
              cardNumber: 2234543,
              expiryMonth: 10,
              expiryYear: 23,
              color: Colors.deepPurple),
          MyCard(
              balance: 548473,
              cardNumber: 2234543,
              expiryMonth: 10,
              expiryYear: 23,
              color: Colors.blue),
          MyCard(
              balance: 548473,
              cardNumber: 2234543,
              expiryMonth: 10,
              expiryYear: 23,
              color: Colors.orangeAccent),
          MyCard(
              balance: 548473,
              cardNumber: 2234543,
              expiryMonth: 10,
              expiryYear: 23,
              color: Colors.brown),
        ],
      ),
    );
  }
}
