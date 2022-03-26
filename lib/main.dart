// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:indexchain/pages/activity.dart';
import 'package:indexchain/pages/home.dart';
import 'package:indexchain/pages/login.dart';
import 'package:indexchain/pages/settings_children/contact_admin.dart';
import 'package:indexchain/pages/settings_children/settings.dart';
import 'package:indexchain/pages/settings_children/swap_coin.dart';
import 'package:indexchain/pages/signup.dart';
import 'package:indexchain/pages/index.dart';
import 'package:indexchain/pages/address.dart';
import 'package:indexchain/provider/coins.dart';
import 'package:provider/provider.dart';
import 'package:indexchain/pages/settings_children/change_password.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoinProvider(),
      child: MaterialApp(
      initialRoute: "/swap",
      routes: {
        "/":(context) => Home(),
        "/login": (context) => LogIn(),
        "/signup": (context) => SignUp(),
        "/index": (context) => IndexPage(),
        "/activity":(context) => Activity(),
        "/settings":(context) => Settings(),
        "/address": (context) => Address(),
        "/change_Password": (context) => ChangePassword(),
        "/contact_admin": (context) => ContactAdmin(),
        "/swap": (context) => Swap(),
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