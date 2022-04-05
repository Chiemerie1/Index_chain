// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

//####### user #######

class Person {
  final String uid;

  Person({required this.uid});
}
//####### user #######

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Person? _userFromFirebaseUser(User? fUser) {
    return fUser != null ? Person(uid: fUser.uid) : null; 
  }

  Stream<Person?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //####### Anonymous ########

  Future signInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      return _userFromFirebaseUser(user!);
    } catch(e) {
      print(e.toString());
    }
  }
    //####### Anonymous ########

    //####### User Resgistration ########
  
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
      User? user = userCredential.user;
      return _userFromFirebaseUser(user!);

    } catch (e) {
      print(e.toString());
      return null;
    }
  }
    //####### User Resgistration ########

    //####### User Login ########

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      return _userFromFirebaseUser(user);
      
    } catch (e) {
      print(e.toString());
      return null;

    }
  }

    //####### User Login ########

  Future logOut() async {
    try {
      return await _auth.signOut();
    } catch(error) {
      print(error.toString());
      return null;
    }
  }
    //####### User Resgistration ########

}


//  on FirebaseAuthException catch (error) {
//       if (error.code == "weak-password") {
//         print("provide a strong password");
//       }else if (error.code == "email-already-in-use") {
//         print("Email is already resigistered");
//       }
//     } catch (error) {
//       print(error);
//     }