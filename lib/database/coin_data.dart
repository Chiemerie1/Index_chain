


import 'package:flutter/cupertino.dart';

class CoinData {
 final String name;
  final double price;

  CoinData({required this.name, required this.price});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "price": price,
    };
  }

}

class UserData {
  
  final String uid;
  final String swapFrom;
  final String swapTo;
  final String amount;

  UserData({
    required this.uid,
    required this.swapFrom,
    required this.swapTo,
    required this.amount
  });

}

class SwapCoin {

  final String uid;
  final String swap;
  final String toCoin;
  final String value;

  SwapCoin({
    required this.uid,
    required this.swap,
    required this.toCoin,
    required this.value
  });
}

