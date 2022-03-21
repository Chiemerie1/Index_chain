// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';



class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.white,
        title: Text(
          "Withdraw funds",
          style: TextStyle(
            fontFamily: "Fredoka",
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.purple[900]
          ),
        ),
        // ###### AppBAr widgets ######
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.add_box_outlined, color: Colors.purple[900],)),
          IconButton(
            onPressed:() {},
            icon: Icon(Icons.settings_applications, color: Colors.purple[900]),
          )
        ],
        elevation: 0.0
      ),
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Text(
            "Withdraw funds",
            style: TextStyle(
              fontFamily: "Fredoka",
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              wordSpacing: 2.0,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            "Withdraw funds",
            style: TextStyle(
              fontFamily: "Fredoka",
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              wordSpacing: 2.0,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}