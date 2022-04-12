// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:coingecko_api/coingecko_api.dart';
import 'package:coingecko_api/data/market.dart';
import 'package:flutter/material.dart';





class Prices extends StatefulWidget {
  @override
  State<Prices> createState() => _PricesState();
}
  
CoinGeckoApi priceApi = CoinGeckoApi();


class GetPrices {
  
  Future<List<Market>> getPrices() async {
    var price = await priceApi.coins.listCoinMarkets(
      vsCurrency: "usd",
      coinIds: [
        "bitcoin", "solana", "binanomics", "usd-coin", "terra", "shiba-inu", "avalanche", "polkadot",
        "ethereum", "ageofgods", "binary-cat", "binaryx", "bingo-cash", "binom-protocol", "bios",
        "litecoin", "biotron", "birdchain", "bird-money", "bishu-finance", "bitacium",
        "stellar",  "bitcash", "bitcicoin","bitclave", "bitcloud", "bitclout", "bitcoin-anonymous",
        "cardano", "bitcoin-cash", "bitcoin-god", "bitcoin-scrypt", "bitcoinx", "zebec-protocol",
        "monero", "zinja", "zirve-coin", "zodiac", "spartacus", "yearn-finance", "redlight-node-district",
        "tether",  "redshiba", "reecoin", "rhythm", "ribbon-finance", "richochet",  "richquack",
        "dogecoin", 
        "daoland", "daolaunch", "daosquare", "daostack","dark-matter", "tetherblack", "tetherino", "themis",
        "the-citadel", "the-collective-coin", "the-garden", "thekey", "the-king", "the-luxury", "the-neko",
        "ixo", "jackpot", "jacy", "the-sandbox", "the-reaper", "theos", "the-node",
        "jaguarswap", "jarvis","jasmycoin", "javascript-token", "jedstar", "jeet",
        "jem", "jeritex", "jet", "jigen", "jigstack", "jindoge",
        "jmtime", "jobchain", "jobcash", "joe", "joint", "jointer", "joulecoin",
        "joys",  "joystream", "jpegvaultdao", "jpool", "juggernaut",  "juicebox",
        "julswap"

      ],
      itemsPerPage: 50,
      );
      
      if(!price.isError) {
        
        return price.data;
      }
      return [];
  }
  
}

class _PricesState extends State<Prices> {

  List<Market> markets = [];
  final prices = GetPrices();


  @override
  void initState() {
    super.initState();
    getMarkets();
  }

  void getMarkets() async {
    var data = await prices.getPrices();
    setState(() {
      markets = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: markets.length,
                itemBuilder: ((context, index) {
                  var market = markets[index];
                  return ListTile(
                    tileColor: Colors.purple[50],
                    leading: FadeInImage(
                      image: NetworkImage("${market.image}", scale: 8),
                      placeholder: AssetImage("assets/index_logo.png",),
                      ),
                    title: Text(
                      market.name,
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[900]
                      ),
                    ),
                    trailing: Text(
                      "\$ ${market.currentPrice}",
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900]
                      ),
                    ),
                    subtitle: Text(
                      "${market.atlChangePercentage}",
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                      ),
                    ),
                     );
                }
                )
              )  
            )
          ],
        ),
        
      ),
    );
  }

  
}