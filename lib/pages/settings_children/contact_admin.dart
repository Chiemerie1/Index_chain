// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class ContactAdmin extends StatefulWidget {
  const ContactAdmin({ Key? key }) : super(key: key);

  @override
  State<ContactAdmin> createState() => _ContactAdminState();
}

class _ContactAdminState extends State<ContactAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.purple[900],
        backgroundColor: Colors.grey[50],
        // leading: Icon(Icons.settings, color: Colors.purple[900],),
        elevation: 0.0,
        title: Text(
          "Contact Admin",
          style: TextStyle(
            fontFamily: "Fredoka",
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.purple[900]
          ),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
              Icon(Icons.mark_email_read, color:Colors.purple[900], size: 50,),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Subject",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  decoration: InputDecoration(
                    hintText: "Type your message",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1.5),
                    
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(height: 198,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple[900])
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.mail, color: Colors.white,),
                    label: Text(
                      "Send email",
                      style: TextStyle(
                        fontFamily: "Fredoka",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.white
                      ),
                    )
                    
                  ),
                
                ]
                ),
              )
      
          ]
        ),
      ),
      
    );
  }
}