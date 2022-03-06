// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:indexchain/pages/login.dart';
import 'package:indexchain/pages/signup.dart';
import 'package:indexchain/pages/index.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/index",
    routes: {
      "/": (context) => LogIn(),
      "/signup": (context) => SignUp(),
      "/index": ((context) => IndexPage())
    }
    

  ));
  
}












// floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Text(
        //     "click me",
        //     style: TextStyle(
        //       fontFamily: "IndieFlower"
        //     ),
        //     ),
        //   backgroundColor: Colors.green[400],
          
        //   ),