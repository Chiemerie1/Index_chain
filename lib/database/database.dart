import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:indexchain/database/coin_data.dart';


class Database {

  final String uid;
  Database({required this.uid});


  final CollectionReference coinData = FirebaseFirestore
  .instance.collection("coin-data");


  Future createCoinData(List<CoinData> coins) async {
    return await coinData.doc(uid).set({
      "coins": coins.map((e) => e.toMap()).toList()
    });
  }

  List<CoinData> _coinDataFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return CoinData(
        name: doc["name"] ?? "",
        price: doc["price"] ?? 0,
      );
    }).toList();
  }


    
  // getting data

  Stream<List<CoinData>> get allCoins {
    return coinData.snapshots().map(_coinDataFromSnapshot);
  }
 


  
}



// Stream<List<CoinData>> get allCoins {
//     return coinData.snapshots().map((QuerySnapshot querySnapshot) => 
//     querySnapshot.docs.map((coins) {
//      Map<String, dynamic> data = Map<String, dynamic>.from(coins.get("coin")!);
//       print(data);
//      return CoinData(name: "name", price: 100);
//     } ).toList()
//     );
//   }
 