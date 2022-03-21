// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_initializing_formals


import 'package:flutter/material.dart';
import 'package:indexchain/pages/activity.dart';
import 'package:indexchain/pages/index.dart';





class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

//###### classes ######




class _HomeState extends State<Home> {

  int currentIndex = 0;

  final navBarPages = [
    IndexPage(),
    Card(child: Text("Wallet address"),),
    Card(child: Text("Wallet address"),),
    Activity(),
    Card(child: Text("Wallet address"),),
  ];

  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.white,
        title: Text(
          "Wallet",
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
      //####### NavBar ##########
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap:(index) => setState(() => currentIndex = index),

        selectedItemColor: Colors.purple[900],
        items: [
          BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home_work, color: Colors.grey[900]),
          label: "Home"
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.business_center_rounded, color: Colors.grey[900],),
            label: "Address",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.bar_chart_rounded, color: Colors.grey[900]),
            label: "prices",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple[900],
            icon: Icon(Icons.hive, color: Colors.purple[900]),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.settings, color: Colors.grey[900]),
          label: "Setttings",
          ),
        ]),
      body: navBarPages[currentIndex]
    );
  }
}
