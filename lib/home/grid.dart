import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Flexible(
        child: GridView.count(
          mainAxisSpacing: 13.0,
          crossAxisSpacing: 13.0,
          crossAxisCount: 3,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[100],
              child: Text(
                "Furniture",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[100],
              child: Text(
                "Cool Roof",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[100],
              child: Text(
                "Photo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[100],
              child: Text(
                "Construction",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 50, 5, 30),
              color: Colors.blue[100],
              child: Text(
                "Modular Kitchen",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      );

  }
}
