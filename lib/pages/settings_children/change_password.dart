// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';




class ChangePassword extends StatefulWidget {
  const ChangePassword({ Key? key }) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.grey[50],
        // leading: Icon(Icons.settings, color: Colors.purple[900],),
        elevation: 0.0,
        title: Text(
          "Change password",
          style: TextStyle(
            fontFamily: "Fredoka",
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.purple[900]
          ),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
                padding: EdgeInsets.fromLTRB(20,10,20,10),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Icon(Icons.credit_score, color:Colors.purple[900], size: 250,),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "current password",
                        hintText: "current password",
                        prefixIcon: Icon(Icons.person, color: Colors.purple[900],),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "new password",
                        hintText: "new password",
                        prefixIcon: Icon(Icons.person, color: Colors.purple[900],),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "confirm password",
                        hintText: "confirm password",
                        prefixIcon: Icon(Icons.person, color: Colors.purple[900],),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[900])
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.change_circle_outlined, color: Colors.white,),
                      label: Text(
                        "change password",
                        style: TextStyle(
                          fontFamily: "Fredoka",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.white
                        ),
                      )
                      
                      ),
                  ],
                ),
              ),
      ),
    );
  }
}

