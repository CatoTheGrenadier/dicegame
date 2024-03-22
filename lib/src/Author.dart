import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              "About Myself",
              style: TextStyle(
                fontSize: 48.0,
                fontFamily: "KingdomComeTitle",
                decoration: TextDecoration.none,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Good day! My name is Yi Ling and i'm a modder of MB II Bannerlord. Thank you for playing my game!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      )
    );
  }
}