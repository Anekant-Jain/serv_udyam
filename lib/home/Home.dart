import 'package:flutter/material.dart';

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
      body: Container(
        child: GridView.count(
              mainAxisSpacing: 13.0,
              crossAxisSpacing: 13.0,
              crossAxisCount: 3,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
                  color: Colors.white70,
                  child: Text(
                    "Furniture",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
                  color: Colors.white70,
                  child: Text(
                      "Cool Roof",
                      textAlign: TextAlign.center,
                  ),

                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
                  color: Colors.white70,
                  child: Text(
                      "Photo",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
                  color: Colors.blue[100],
                  child: Text(
                      "Construction",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
                  color: Colors.white70,
                  child: Text(
                    "Modular Kitchen",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

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
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Ask the Expert'),
            backgroundColor: Colors.pink,
          ),
        ],

      ),
    );
  }
}
