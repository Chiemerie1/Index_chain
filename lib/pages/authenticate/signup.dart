// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:indexchain/pages/loading.dart';
import 'package:indexchain/provider/providing.dart';



class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  String signUp = "Signup";

  String userName = "", email = "", password = "", confirmPassword = "";
  String error = "";

  final _formKey = GlobalKey<FormState>();

  bool loading = false;


  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
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
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Icon(Icons.double_arrow_rounded,
                color: Colors.purple[900],
                size: 100.0,),
                SizedBox(height: 20.0),
                
                // ######### sign up details #########
                // ######### credentials #########
          
                TextFormField(
                  onChanged: (value) {
                    setState((){
                      userName = value;
                    });
                  },
                  validator: (value) {
                   if (value != null && value.isEmpty) {
                     return "Enter a username";
                   } else {
                     return null;
                   }
                  },
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
          
                TextFormField(
                  onChanged: (value) {
                    setState((){
                      email = value;
                    });
                  },
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "enter an email";
                    } else {
                      return null;
                    }
                  },
                   
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
          
                TextFormField(
                  onChanged: (value) {
                    setState((){
                      password = value;
                    });
                  },
                  validator: (value) {
                    if (value != null && value.length < 8) {
                      return "choose a password";
                    }else {
                      return null;
                    }
                  },
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
                TextFormField(
                  onChanged: (value) {
                    setState((){
                      confirmPassword = value;
                    });
                  },
                  validator: (value) {
                    if (value != password) {
                      return "passwords did not match";
                    } else {
                      return null;
                    }
                  },
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
                Text(
                  error,
                  style: TextStyle(color: Colors.red[500], fontFamily: "Fredoka", fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: 250,
                  child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        dynamic response = await _auth.registerWithEmailAndPassword(email, password);
                        if (response == null) {
                          setState(() {
                           error = "please provide a valid email";
                           loading = false;
                          });
                        }
                      }
                      
                    },
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
                  onPressed: () {Navigator.pushReplacementNamed(context, "/login");},
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
        ),
        
      
      )
    );
  }
}