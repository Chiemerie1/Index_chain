// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class Address extends StatefulWidget {
  const Address({ Key? key }) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  String btcAddress = "1Furfhe8BFbkEhXn1xcYPr8jYAACNpfV7p";
  String ethAdress = "0xE7Db06d4acE56067Ac15cdb9b7BAe1140ccC21f8";
  String usdtAddress = "TYUfrG53TvQ1uXza5Vw8Q4AkFnd2ts1bSm";

  

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
              Text(
                "Bitcoin Address",
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
              ),
              ),
              Center(
                child: TextField(
                  controller: TextEditingController(
                    text: btcAddress),
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
                ),
              ),
              ),
              SizedBox(height: 20.0,),
              Text(
                "Ethereum Address",
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
              ),
              ),
              Center(
                child: TextField(
                  controller: TextEditingController(
                    text: ethAdress),
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
          ),
              ),
              ),
              SizedBox(height: 20.0,),
              Text(
                "USDT Address",
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
              ),
              ),
              Center(
                child: TextField(
                  controller: TextEditingController(
                    text: usdtAddress),
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.grey[800]
          ),
              ),
              )

            ],
          ),
        ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20)),
      //       backgroundColor: Colors.purple[900],
      //       child: Icon(Icons.create_outlined),

        
      // ),
    ));
  }
}