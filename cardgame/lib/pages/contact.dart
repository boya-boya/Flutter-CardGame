// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text("App developed by Boya de Meow"),
                Text(
                  "Contact",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "999-999-9999",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
