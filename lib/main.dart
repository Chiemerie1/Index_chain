// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:indexchain/pages/authenticate/login.dart';
import 'package:indexchain/pages/authenticate/signup.dart';
import 'package:indexchain/pages/home/activity.dart';
import 'package:indexchain/pages/home/address.dart';
import 'package:indexchain/pages/home/index.dart';
import 'package:indexchain/pages/home/prices.dart';
import 'package:indexchain/pages/settings_children/change_password.dart';
import 'package:indexchain/pages/settings_children/contact_admin.dart';
import 'package:indexchain/pages/settings_children/settings.dart';
import 'package:indexchain/pages/settings_children/swap_coin.dart';
import 'package:indexchain/pages/wrapper.dart';
import 'package:indexchain/provider/providers/user_data.dart';
import 'package:indexchain/provider/providing.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:indexchain/database/database.dart';
import 'package:indexchain/database/coin_data.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CoinProvider()),
        StreamProvider<Person?>.value(
          value: AuthService().user, initialData: null,),

        StreamProvider<UserCoinData>.value(
          value: Database(uid: "").allCoins,
          initialData: UserCoinData(coins: []),
          ),
        
      
      ],
      child: MaterialApp(
        home: Wrapper(),
        routes: {
        "/login": (context) => LogIn(),
        "/signup": (context) => SignUp(),
        "/index": (context) => IndexPage(),
        "/activity":(context) => Activity(),
        "/settings":(context) => Settings(),
        "/address": (context) => Address(),
        "/change_Password": (context) => ChangePassword(),
        "/contact_admin": (context) => ContactAdmin(),
        "/swap": (context) => Swap(),
        "/price": (context) => Prices()
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