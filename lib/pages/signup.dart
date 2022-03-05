// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String signUp = "Signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text(
          signUp,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: <Widget>[
              Icon(Icons.double_arrow_rounded,
              color: Colors.purple[900],
              size: 100.0,),
              SizedBox(height: 20.0),
              
              // ######### sign up details #########
              // ######### credentials #########
              TextField(
                decoration: InputDecoration(
                  labelText: "enter firstname",
                  prefixIcon: Icon(Icons.draw_outlined, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height:20.0),

              TextField(
                decoration: InputDecoration(
                  labelText: "enter lastname",
                  prefixIcon: Icon(Icons.draw_outlined, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height:20.0),

              TextField(
                decoration: InputDecoration(
                  labelText: "enter username",
                  prefixIcon: Icon(Icons.draw_outlined, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height:20.0),

              TextField(
                decoration: InputDecoration(
                  labelText: "enter email",
                  prefixIcon: Icon(Icons.alternate_email, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height:20.0),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "enter password",
                  prefixIcon: Icon(Icons.security_rounded, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height:20.0),
              // ######## password ########
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "confirm password",
                  prefixIcon: Icon(Icons.security, color: Colors.purple[900],),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple),
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "register",
                    style: TextStyle(
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
                icon: Icon(Icons.login, color: Colors.purple[900],),
                label: Text(
                  "Already have an account? Log in",
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontFamily: "Fredoka",
                    letterSpacing: 2.0,
                    fontSize: 15),))
              
              ],
            ),
        ),
        
      
      )
    );
  }
}