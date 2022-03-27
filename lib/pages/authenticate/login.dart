// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indexchain/pages/authenticate/signup.dart';
import 'package:indexchain/provider/providing.dart';



class LogIn extends StatefulWidget {

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  
  String open = "open";

  String appTitle = "IndexChain";

  String login = "Login";

  String register = "Register";

  final AuthService _auth = AuthService();
  String email = "", password ="";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(login),
        centerTitle: true,
        backgroundColor: Colors.purple[900],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20,0,20,0),
        child: SingleChildScrollView(
          reverse: true,
          child: Form(
            child: Column(
              children: <Widget>[
                
                SizedBox(height: 40.0),
                Image.asset("assets/index_logo.png", scale: 3.0),
                SizedBox(height: 20.0),
                
                // ######### log in details #########
                // ######### username and password textbox #########
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "enter username",
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person, color: Colors.purple[900],),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple),
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                ),
                SizedBox(height:40.0),
                // ######## password ########
                TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    setState (() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "enter password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.security, color: Colors.purple[900],),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple),
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                ),
                SizedBox(height: 40.0),
                SizedBox(
                  width: 250,
                  child: TextButton(
                    onPressed: () async {
                      dynamic response = await _auth.signInAnon();
                      if (response == null) {
                        print("error signing in");
                      } else {
                        print("Singned in");
                        print(response.uid);
                      }
                    },
                    child: Text(
                      "log in",
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[200]
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                      elevation: MaterialStateProperty.all(10.0),
                      )
                    ),
                ),
                
                SizedBox(height: 40),
                TextButton.icon(
                  onPressed: () {Navigator.pushReplacementNamed(context, "/signup");},
                  icon: Icon(Icons.app_registration_rounded, color: Colors.purple[900],),
                  label: Text(
                    "Don't already have an account? sign up",
                    style: TextStyle(
                      color: Colors.purple[900],
                      fontFamily: "Fredoka",
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    )  
                    ),),
                
                ],
              ),
          ),
        ),
        
      
      ));
  }
}