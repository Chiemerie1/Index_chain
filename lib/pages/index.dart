// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_initializing_formals


import 'package:flutter/material.dart';
import 'package:indexchain/main.dart';
import 'package:indexchain/pages/index.dart';

import 'package:provider/provider.dart';
import 'package:indexchain/provider/coins.dart';





class IndexPage extends StatefulWidget {

  @override
  State<IndexPage> createState() => _IndexPageState();
}


class _IndexPageState extends State<IndexPage> {

  
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoinProvider>(context);
    final coins = provider.coin;
    final total = provider.total;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          Card(
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10),
            color: Colors.purple[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "\$$total",
                      style: 
                      TextStyle(
                        fontFamily: "Fredoka",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 40,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( 
                    "Total balance",
                    style: TextStyle(
                      fontFamily: "Fredoka",
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ],
            ),
          ),
          // ###### Coin List #######
          Expanded(
            child: ListView.builder(
              itemCount: coins.length,
              padding: EdgeInsets.all(0.0),
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/${coins[index].coinIcon}"),
                    ),
                    title: Text(
                      coins[index].cryptoName,
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      )),
                    trailing: Text(
                      "\$${coins[index].amount}",
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                );
            },

            ),
          )
        ],
      )
    );
  }
}
