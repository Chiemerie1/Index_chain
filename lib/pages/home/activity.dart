// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:indexchain/provider/providing.dart';



class Activity extends StatefulWidget {

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  final offwhite = Color(0xfff8f0e3);
  // ####### Drop down menu #######
  String dropDownDefaultValue = "transfer funds";
  var dropDownItems = ["Withdraw funds", "Receive fund", "transfer funds"];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoinProvider>(context);
    final total = provider.total;

    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(20),
                        value: dropDownDefaultValue,
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
                        items: dropDownItems.map((dropDownItems) {
                          return DropdownMenuItem(
                            value: dropDownItems,
                            child: Text(dropDownItems),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropDownDefaultValue = value!;
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
                              child: TextField(
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text( 
                          "\$$total",
                          style: TextStyle(
                            fontFamily: "Fredoka",
                            fontSize: 25.0,
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    
          
          ],
                  ),
                ),
                SizedBox(height: 25,),
                TextButton(
                  // ######## Drop down action button #########
                  onPressed: (() {}),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300, 0)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.all(16))
                  ),
                  child: Text(
                    "Continue",
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
    );
  }
}