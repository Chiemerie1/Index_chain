// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';


class Confirm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Transaction confirmation",
                  style: TextStyle(
                    fontFamily: "Fredoka",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 30,
                    color: Colors.grey[800]
                ),
                ),
              ),
              SizedBox(height: 70.0,),
              Center(child: Icon(Icons.alarm_on_rounded, size: 270, color: Colors.purple[900],)),
              SizedBox(height: 70.0,),
              Center(
                child: Text(
                  "Transaction successful \n press OK to go back \n         to home",
                  style: TextStyle(
                    fontFamily: "Fredoka",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 18,
                    color: Colors.grey[800]
                ),
                ),
              ),
              SizedBox(height: 70.0,),
              Center(
                child: TextButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 0)),
                      backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                    ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                    fontFamily: "Fredoka",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 18,
                    color: Colors.white
                ),
                
                  )),
              )

              

            ],
          ),
        ),
    )
    );
  }
}