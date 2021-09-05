// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:cardgame/pages/cards.dart';
import 'package:cardgame/pages/contact.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int _currentIndex = 0;
final tabs = [CardPage(), ContactPage()];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Games'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าแรก"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "ติดต่อเรา")
        ],
        onTap: (index) {
          setState(() {
            // ignore: avoid_print
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
