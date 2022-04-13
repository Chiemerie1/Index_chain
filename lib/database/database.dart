import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:indexchain/database/coin_data.dart';
import 'package:indexchain/provider/providers/user_data.dart';

class Database {
  final String uid;
  Database({required this.uid});

  FirebaseAuth auth = FirebaseAuth.instance;

  final CollectionReference coinData =
      FirebaseFirestore.instance.collection("coin-data");

  Future createCoinData(List<CoinData> coins) async {
    return await coinData
        .doc(uid)
        .set({"coins": coins.map((e) => e.toMap()).toList()});
  }

  UserCoinData _coinDataFromSnapshot(DocumentSnapshot snapshot) {
    var data = Map<String, dynamic>.from(snapshot.data() as Map);
    List<CoinData> coins = [];
    List<Map<String, dynamic>> rawCoin =
        List<Map<String, dynamic>>.from((data["coins"]));
    coins = rawCoin.map((doc) {
      var price = doc["price"] ?? 0;
      return CoinData(
        name: doc["name"] ?? "",
        price: double.parse("$price")
      );
    }).toList();
    return UserCoinData(coins: coins);
  }

  // getting data

  Stream<UserCoinData> get allCoins {
    String useruid = auth.currentUser!.uid.toString();
    return coinData.doc(useruid).snapshots().map(_coinDataFromSnapshot);
  }

  //user data

  //activity
  //amount
  //wallet address

}

Future<void> userFundActivity(
    String activity, String amount, String walletAddress) async {
  CollectionReference fundActivity =
      FirebaseFirestore.instance.collection("fund-activity");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  fundActivity.add({
    "uid": uid,
    "activity": activity,
    "amount": amount,
    "walletAddress": walletAddress
  });
}

Future<void> userCoinSwapActivity(
    String swap, String toCoin, String value) async {
  CollectionReference swapActivity =
      FirebaseFirestore.instance.collection("coin-swap");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  swapActivity.add({
    "uid": uid,
    "swap": swap,
    "to coin": toCoin,
    "value": value
  });
}
