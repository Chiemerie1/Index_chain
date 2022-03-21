import 'package:flutter/material.dart';

//########### Providers ############

class CryptoCoins {

  String cryptoName;
  double amount;
  String coinIcon;

  CryptoCoins(this.cryptoName, this.amount, this.coinIcon);

}


class CoinProvider extends ChangeNotifier {
  List<CryptoCoins> coins = [
    CryptoCoins("Ethereum", 173, "ethereum.png"),
    CryptoCoins("Polkadot", 127, "polkadot.png"),
    CryptoCoins("Dogecoin", 147, "dogecoin.png"),
    CryptoCoins("Stellar",133, "stellar.png"),
    CryptoCoins("Bitcoin", 200, "bitcoin.png"),
    CryptoCoins("Tether", 173, "tether.png"),
    CryptoCoins("Cardano", 127, "cardano.png"),
    CryptoCoins("Litecoin", 147, "litecoin.png"),
    CryptoCoins("Monero",133, "monero.png"),
    CryptoCoins("Shiba", 200, "shiba.png"),
    CryptoCoins("USDT",70, "shiba.png"), 
  ];

  List<CryptoCoins> get coin => coins.toList();

  double get total {
    return coin.map((coin) => coin.amount).reduce((a, b) => a + b).toDouble();
  }
}