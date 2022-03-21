// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';



class LogIn extends StatefulWidget {

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  
  String open = "open";

  String appTitle = "IndexChain";

  String login = "Login";

  String register = "Register";

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
          child: Column(
            children: <Widget>[
              // Text(
              //   "Login",
              //   style: TextStyle(
              //     color: Colors.grey[850],
              //     fontSize: 30.0,
              //     letterSpacing: 2.5,
              //     fontWeight: FontWeight.bold
              //   ),
              // ),
              SizedBox(height: 40.0),
              Image.asset("assets/index_logo.png", scale: 3.0),
              SizedBox(height: 20.0),
              
              // ######### log in details #########
              // ######### username and password textbox #########
              TextField(
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
              TextField(
                obscureText: true,
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
                  onPressed: () {},
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
                onPressed: () {},
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
        
      
      ));
  }
}