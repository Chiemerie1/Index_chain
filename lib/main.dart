// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:indexchain/pages/activity.dart';
import 'package:indexchain/pages/home.dart';
import 'package:indexchain/pages/login.dart';
import 'package:indexchain/pages/settings.dart';
import 'package:indexchain/pages/signup.dart';
import 'package:indexchain/pages/index.dart';
import 'package:indexchain/provider/coins.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoinProvider(),
      child: MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => Home(),
        "/login": (context) => LogIn(),
        "/signup": (context) => SignUp(),
        "/index": (context) => IndexPage(),
        "/activity":(context) => Activity(),
        "/settings":(context) => Settings(),
      }
      ),
    );
      
   
  }
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