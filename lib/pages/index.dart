// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class IndexPage extends StatefulWidget {

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  double totalBalace = 0.0;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10),
            color: Colors.purple[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    "$totalBalace",
                    style: 
                    TextStyle(
                      fontFamily: "Fredoka",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( 
                    "Total balance",
                    style: TextStyle(
                      fontFamily: "Fredoka",
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),

            ),
            
        ],
      ),
    );
  }
}