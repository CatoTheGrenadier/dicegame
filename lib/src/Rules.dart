import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
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
              "Rules",
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
              "In the 4-dice game, all players roll their four dice simultaneously. Each player's score is calculated by multiplying the numbers rolled on their four dice together. The player with the highest product wins the round.",
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