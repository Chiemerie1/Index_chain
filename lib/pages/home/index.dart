// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:indexchain/database/coin_data.dart';
import 'package:provider/provider.dart';
import 'package:indexchain/provider/providing.dart';



class IndexPage extends StatefulWidget {

  @override
  State<IndexPage> createState() => _IndexPageState();
}


class _IndexPageState extends State<IndexPage> {

    
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoinProvider>(context);
    final total = provider.total;
    // List<UserData> userData = Provider.of<List<UserData>>(context);
    final coindata = Provider.of<List<CoinData>>(context);
    // coindata.forEach((coin){
    //   print(coin.name);
    //   print(coin.price);
    // });

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
          Expanded(
            child: ListView.builder(
              itemCount: coindata.length,
              itemBuilder: ((context, index) {
                if (coindata.isEmpty){
                  return LinearProgressIndicator();
                }
                var coin = coindata[index];
                return ListTile(
                  title: Text(
                    coin.name
                  ),
                  trailing: Text(
                    "${coin.price}"
                  ),
                );
              })
            )
          ),
        ],
      )
    );
  }
}

