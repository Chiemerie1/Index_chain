// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class Address extends StatefulWidget {
  const Address({ Key? key }) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Wallet Address",
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 30,
                  color: Colors.grey[800]
          ),
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "<Here goes your wallet address>",
                  style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 18,
                  color: Colors.grey[800],
                )
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.purple[900],
            child: Icon(Icons.create_outlined),

        
      ),
    ));
  }
}