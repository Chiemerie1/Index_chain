// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:cryptocoins_icons/cryptocoins_icons.dart';



class Swap extends StatefulWidget {
  const Swap({ Key? key }) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        title: Text(
          "Coin Swap",
          style: TextStyle(
            fontFamily: "Fredoka",
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.purple[900]
          ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,10,20,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.purple),
            ),
            onPressed: () {},
            icon: Icon(CryptoCoinIcons.BTC, color: Colors.purple[900],),
            label: Text(
              "Swap BTC",
              style: TextStyle(
                fontFamily: "Fredoka",
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.purple[900]
              ),
            )
            
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.purple),
            ),
            onPressed: () {},
            icon: Icon(CryptoCoinIcons.ETH, color: Colors.purple[900],),
            label: Text(
              "Swap ETH",
              style: TextStyle(
                fontFamily: "Fredoka",
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.purple[900]
              ),
            )
          ),
          SizedBox(height: 20,),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.purple),
            ),
            onPressed: () {},
            icon: Icon(CryptoCoinIcons.USDT, color: Colors.purple[900],),
            label: Text(
              "Swap USDT",
              style: TextStyle(
                fontFamily: "Fredoka",
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.purple[900]
              ),
            )
            
          ),


        ],),
      )
    );
  }
}