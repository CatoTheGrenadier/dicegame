import 'package:flutter/material.dart';
import 'Rules.dart';

class RulesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Rules()),
            );
          },
        child: Text('Rules'),
      ),
    );
  }
}
