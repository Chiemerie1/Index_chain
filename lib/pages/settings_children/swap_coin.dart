// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:indexchain/pages/constants.dart';
import 'package:indexchain/database/database.dart';



class Swap extends StatefulWidget {

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {

  String amount = "";
  final _formKey = GlobalKey<FormState>();

  final offwhite = Color(0xfff8f0e3);
  // ####### Drop down menu #######
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Swap Coin",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        color: Colors.white,
                        wordSpacing: 2.0, ),
                      ),
                      SizedBox(height: 10.0,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField(
                          value: bitcoinDefaultValue,
                          elevation: 10,
                          dropdownColor: Colors.purple[500],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Fredoka",
                            letterSpacing: 2.0,
                            wordSpacing: 2.0, ),
                          isExpanded: true,
                          icon: Icon(Icons.arrow_circle_down_rounded, color: Colors.white,),
                          iconSize: 30,
                          items: bitcoinDropDownItems.map((bitcoinDropDownItems) {
                            return DropdownMenuItem(
                              value: bitcoinDropDownItems,
                              child: Text(bitcoinDropDownItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              bitcoinDefaultValue = value!;
                            });
                          },
                        ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField(
                          value: coinsDefaultValue,
                          elevation: 10,
                          dropdownColor: Colors.purple[500],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Fredoka",
                            letterSpacing: 2.0,
                            wordSpacing: 2.0, ),
                          isExpanded: true,
                          icon: Icon(Icons.arrow_circle_down_rounded, color: Colors.white,),
                          iconSize: 30,
                          items: coinsDropDownItems.map((coinsDropDownItems) {
                            return DropdownMenuItem(
                              value: coinsDropDownItems,
                              child: Text(coinsDropDownItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              coinsDefaultValue = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    
                      SizedBox(height: 20,),
                      Card(
                        elevation: 10.0,
                        margin: EdgeInsets.all(2),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Center(
                                child: TextFormField(
                                  validator: (value) => value!.isEmpty ? "Enter a USD equivalence" : null,
                                  onChanged: ((value) {
                                    setState(() {
                                      amount = value;
                                    });
                                  }),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: "enter value",
                                    hintText: "Amount",
                                    prefixIcon: Icon(Icons.attach_money, color: Colors.purple[900],),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.purple),
                                      borderRadius: BorderRadius.circular(20.0)
                                    )
                                  ),
                                ),
                              ),
                            ),
                        SizedBox(height: 40.0),               
            
            ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextButton(
                    // ######## Drop down action button #########
                    onPressed: (() async {
                      userCoinSwapActivity(bitcoinDefaultValue, coinsDefaultValue, amount);

                    }),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(16))
                    ),
                    child: Text(
                      "Swap",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold,
                        fontFamily: "Fredoka",
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                      ),
                    )
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}