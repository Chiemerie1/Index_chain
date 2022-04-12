
import 'package:flutter/material.dart';
import 'package:indexchain/pages/authenticate/login.dart';
import 'package:indexchain/pages/home/home.dart';
import 'package:indexchain/provider/providing.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Person?>(context);
    
    if (user == null) {
      return LogIn();
    } else {
      return Home();
    }
  }
}