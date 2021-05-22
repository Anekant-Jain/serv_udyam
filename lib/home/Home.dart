import 'package:flutter/material.dart';

import 'links.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 10,
        leading: Container(
          child: Image.asset("slogo.png"),
        ),
        title: Text(
          "Servudyam",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: null,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
        children: <Widget>[
          Row(
             children: <Widget>[
               Banner(),
            ],
          ),
          Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
              color: Colors.blue[300],
              child: Text(
                "Furniture",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
              color: Colors.blue[100],
              child: Text(
                "Cool Roof",
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
              color: Colors.blue[300],
              child: Text(
                "Photo",
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(width: 10,),
      ]
    ),

          SizedBox(height: 10, width: 10,),
            Row(
              children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[300],
              child: Text(
                "Construction",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[300],
              child: Text(
                "Modular Kitchen",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),

              Links(),

    ],
        )

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('Requirements'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Ask the Expert'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
