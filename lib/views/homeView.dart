// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "sneakers",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
              fontSize: 30),
        ),
        centerTitle: false,
        actions: <Widget>[
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            
          ),
        ],
        elevation: 2,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            ListTile(
              title: Text(
                "Collection",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Men",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Women",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
