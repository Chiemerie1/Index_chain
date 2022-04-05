// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_initializing_formals


import 'package:flutter/material.dart';
import 'package:indexchain/pages/home/activity.dart';
import 'package:indexchain/pages/home/index.dart';
import 'package:indexchain/pages/home/prices.dart';
import 'package:indexchain/pages/settings_children/settings.dart';
import 'package:indexchain/provider/providing.dart';





class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

//###### classes ######




class _HomeState extends State<Home> {

  int currentIndex = 0;

  final navBarPages = [
    IndexPage(),
    Prices(),
    Activity(),
    Settings(),
  ];

  
  @override
  Widget build(BuildContext context) {

    final AuthService _auth = AuthService();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.grey[50],
        title: Text(
          "Indexchain",
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
            onPressed: () async {
              await _auth.logOut();
            }, 
            icon: Icon(Icons.logout_outlined, color: Colors.purple[900],)),
          
        ],
        elevation: 0.0
      ),
      //####### NavBar ##########
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap:(index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.purple[900],
        items: [
          BottomNavigationBarItem(
          backgroundColor: Colors.grey[50],
          icon: Icon(Icons.home_work, color: Colors.grey[900]),
          label: "Home"
          ),
          
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[50],
            icon: Icon(Icons.bar_chart_rounded, color: Colors.grey[900]),
            label: "prices",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[50],
            icon: Icon(Icons.hive, color: Colors.purple[900]),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[50],
          icon: Icon(Icons.settings, color: Colors.grey[900]),
          label: "Setttings",
          ),
        ]),
      body: navBarPages[currentIndex]
    );
  }
}
