import 'package:flutter/material.dart';

import '../components/contain_page_scroll.dart';
import '../components/my_list_tile.dart';
import '../components/my_row-card.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Search here')),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Badge(
                    child: Icon(
                      Icons.notifications,
                      size: 25,
                    ),
                    label: Text(
                      '12',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MyScroll(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyRowCard(
                    IconImagePath: 'lib/images/assets/by.png',
                    buttonText: 'send'),
                MyRowCard(
                    IconImagePath: 'lib/images/assets/snow-leopard.png',
                    buttonText: 'pay'),
                MyRowCard(
                    IconImagePath: 'lib/images/assets/geography.png',
                    buttonText: 'bill'),
              ],
            ),
            //listile button
          ),
          SizedBox(height: 10),
          Column(
            children: [
              MyListTile(
                  subtext: 'Payment and Icons',
                  textName: 'Statistics',
                  ImagePath: 'lib/images/assets/paper-plane.png',
                  onPressed: () {}),
              MyListTile(
                  subtext: 'Transaction History',
                  textName: 'Transactions',
                  ImagePath: 'lib/images/assets/paper-plane.png',
                  onPressed: () {}),
              MyListTile(
                  subtext: 'Transaction History',
                  textName: 'Transactions',
                  ImagePath: 'lib/images/assets/paper-plane.png',
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
