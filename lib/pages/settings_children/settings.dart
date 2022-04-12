// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}


class _SettingsState extends State<Settings> {
  
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Column(
          children: [
            SizedBox(height: 120,),
            Center(
              child: Text(
                "Settings",
                style: TextStyle(
                  fontFamily: "Fredoka",
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  wordSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 70,),

            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 50, 30, 50)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      onPressed:() { setState(() {
                        
                      });
                        Navigator.pushNamed(context, "/change_Password");},
                      child: Text(
                        "Change\npassword",
                        style: TextStyle(
                          fontFamily: "Fredoka",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          wordSpacing: 2.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 50, 30, 50)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      onPressed:() {Navigator.pushNamed(context, "/swap");},
                      child: Text(
                        "Coin\nSwap",
                        style: TextStyle(
                          fontFamily: "Fredoka",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          wordSpacing: 2.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 50, 30, 50)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      onPressed:() {Navigator.pushNamed(context, "/contact_admin");},
                      child: Text(
                        "Contact\nAdmin",
                        style: TextStyle(
                          fontFamily: "Fredoka",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          wordSpacing: 2.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 50, 30, 50)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      onPressed:() {Navigator.pushNamed(context, "/address");},
                      child: Text(
                        "Wallet\nAddresses",
                        style: TextStyle(
                          fontFamily: "Fredoka",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          wordSpacing: 2.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ), 
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 400,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 50, 30, 50)),
                    elevation: MaterialStateProperty.all(5),
                  ),
                  onPressed:() {},
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontFamily: "Fredoka",
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      wordSpacing: 2.0,
                      color: Colors.white
                    ),
                  )
                   
                ),
              ),
            ),
        //     Expanded(
        //       child: ListView.builder(
        //         itemCount: userData.length,
        //         padding: EdgeInsets.all(0.0),
        //         physics: BouncingScrollPhysics(),
        //         itemBuilder: (context, index) {
        //           return ListTile(
        //             leading: Icon(Icons.person, color: Colors.purple[900]),
        //             title: Text(
        //               "userData[index].name,",
        //             style: TextStyle(
        //               fontFamily: "Fredoka",
        //               fontSize: 18.0,
        //               fontWeight: FontWeight.bold,
        //               letterSpacing: 2.0,
        //               wordSpacing: 2.0,
        //               color: Colors.purple[900]
        //             ),
        //             ),
        //             );
                  
        //         },
      
        //       ),
        // ),
          ],
        ),
      ),
    );
  }
}